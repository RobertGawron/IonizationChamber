"""StateMachine integration tests (CSV backend injected via IMeasurementStorage)."""

from __future__ import annotations

import csv
import itertools
import sys
from datetime import datetime, timedelta
from pathlib import Path
from typing import ClassVar, Final

from measurement_acquisition.config import (
    UartConfig,
    CsvWriterConfig,
    DataFrameConfig,
)
from measurement_acquisition.measurement_storage import MeasurementStorage
from measurement_acquisition.physical_layer import PhysicalLayer
from measurement_acquisition.transport_layer import TransportLayer
from measurement_acquisition.application_layer import ApplicationLayer
from measurement_acquisition.state_machine import StateMachine
from measurement_acquisition.mcp3425_converter import MCP3425Converter
from measurement_acquisition.crc import Crc


# ─────────────────────────────────────────────────────────────────────────────
# Fake serial back-ends
# ─────────────────────────────────────────────────────────────────────────────
class _FakeSerial:  # pylint: disable=too-few-public-methods
    """Ultra-light stand-in for :class:`serial.Serial` that emits zero frames."""

    def __init__(self, *_, **__):
        self.is_open = True
        self._frames = itertools.repeat(b"\x00\x00\x00\x00\x00")

    def flushInput(self):  # noqa: N802 – Serial API is camelCase
        pass

    def read(self, size: int, *_, **__) -> bytes:  # noqa: D401
        return next(self._frames)[:size]


class _SequenceFakeSerial(_FakeSerial):
    """Cycles through a predefined list of frames, then repeats the last one."""

    def __init__(self, frames: list[bytes]):
        super().__init__()
        self._frames_iter = iter(frames)
        self._last = frames[-1]

    def read(self, size: int, *_, **__) -> bytes:  # noqa: D401
        frame = next(self._frames_iter, self._last)
        return frame[:size]


# ─────────────────────────────────────────────────────────────────────────────
# Helper CsvWriterCfgHelper subclass – override only what the tests need
# ─────────────────────────────────────────────────────────────────────────────
class CsvWriterCfgHelper(CsvWriterConfig):  # pylint: disable=too-few-public-methods
    """Minimal CsvWriterConfig override used by integration tests."""

    PATH: ClassVar[Final[Path]] = Path("data.csv")
    DELIMITER: ClassVar[Final[str]] = ","
    TIMESTAMP_LABEL: ClassVar[Final[str]] = "time"
    VOLTAGE_LABEL: ClassVar[Final[str]] = "voltage"


# ─────────────────────────────────────────────────────────────────────────────
# Shared helpers
# ─────────────────────────────────────────────────────────────────────────────
MEASUREMENT_COUNT = 10
TOTAL_TICKS = 2 + MEASUREMENT_COUNT * 3  # state-machine cadence


def _build_state_machine() -> tuple[StateMachine, CsvWriterCfgHelper]:
    """Assemble the full stack with the *current* `_FakeSerial` implementation."""
    # Physical layer with fake UART
    uart_cfg = UartConfig()
    physical_layer = PhysicalLayer(uart_cfg, serial_factory=_FakeSerial)

    # Transport layer (frame layout comes first, then physical layer)
    frame_cfg = DataFrameConfig()
    transport_layer = TransportLayer(physical_layer, frame_cfg)

    # Application layer
    application_layer = ApplicationLayer(transport_layer=transport_layer)

    # Storage back-end
    csv_cfg = CsvWriterCfgHelper()
    storage = MeasurementStorage(csv_cfg)

    # Fully wired state machine
    return StateMachine(application_layer, storage), csv_cfg


def _voltage_to_bytes(voltage: float) -> tuple[int, int]:
    """Return (MSB, LSB) representing *voltage* for an MCP3425 frame."""
    raw = int(round(voltage / MCP3425Converter.BASE_LSB)) & 0xFFFF
    return (raw >> 8) & 0xFF, raw & 0xFF


def _make_frame(msb: int, lsb: int) -> bytes:
    """Return a 5-byte frame  [B0, B1, MSB, LSB, CRC]."""
    payload = [0x00, 0x00, msb, lsb]
    crc = Crc.calculate(bytes(payload))
    return bytes(payload + [crc])


# ─────────────────────────────────────────────────────────────────────────────
# Tests
# ─────────────────────────────────────────────────────────────────────────────
def test_application(tmp_path, monkeypatch):
    """Full-stack run with zero-filled frames."""
    monkeypatch.chdir(tmp_path)
    state_machine, csv_cfg = _build_state_machine()

    for _ in range(TOTAL_TICKS):
        state_machine.tick()

    state_machine.measurement_storage.disconnect()

    rows = list(
        csv.reader(
            csv_cfg.PATH.read_text(encoding="utf-8").splitlines(),
            delimiter=csv_cfg.DELIMITER,
        )
    )
    header, *data_rows = rows
    assert header == [csv_cfg.TIMESTAMP_LABEL, csv_cfg.VOLTAGE_LABEL]
    assert len(data_rows) == MEASUREMENT_COUNT
    assert all(float(v) == 0.0 for _, v in data_rows)


# pylint: disable=too-many-locals
def test_application_non_zero_values(tmp_path, monkeypatch):
    """Full-stack run with custom voltages encoded in sequence frames."""
    monkeypatch.chdir(tmp_path)

    sample_voltages = [0.125, 0.25, 0.5]
    frames = [_make_frame(*_voltage_to_bytes(v)) for v in sample_voltages]

    # Replace the serial implementation only for this test
    monkeypatch.setattr(
        sys.modules[__name__],
        "_FakeSerial",
        lambda *a, **kw: _SequenceFakeSerial(frames),
    )

    state_machine, csv_cfg = _build_state_machine()

    # Deterministic timestamps
    t0 = datetime(2025, 7, 2, 13, 0, 0)
    times = [t0 + timedelta(milliseconds=i) for i in range(len(sample_voltages))]
    time_iter = iter(times)
    state_machine.now_func = lambda: next(time_iter)

    total_ticks = 2 + len(sample_voltages) * 3
    for _ in range(total_ticks):
        state_machine.tick()

    state_machine.measurement_storage.disconnect()

    rows = list(
        csv.reader(
            csv_cfg.PATH.read_text(encoding="utf-8").splitlines(),
            delimiter=csv_cfg.DELIMITER,
        )
    )
    header, *data_rows = rows
    assert header == [csv_cfg.TIMESTAMP_LABEL, csv_cfg.VOLTAGE_LABEL]
    assert len(data_rows) == len(sample_voltages)

    for (ts, volt), expected_time, expected_volt in zip(
        data_rows, times, sample_voltages, strict=True
    ):
        assert ts == expected_time.isoformat(sep=" ", timespec="milliseconds")
        assert float(volt) == expected_volt
