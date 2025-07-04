"""Static configuration and frame-layout definitions for MeasurementAcquisition.

This module groups together:

* `BitSpec`, `ByteSpec`, and `DataFrameConfig` – a compile-time description of
  the 5-byte UART frame produced by the detector.
* `UartConfig` – serial-port parameters.
* `CsvWriterConfig` – defaults for the CSV back-end.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path
from typing import ClassVar, Final, Tuple


# ──────────────────────────── helpers ────────────────────────────
@dataclass(frozen=True, slots=True)
class BitSpec:
    """One bit-field inside a single byte."""

    name: str  # symbolic field name
    mask: int  # e.g. 0xF0
    shift: int = 0  # bits to shift right after masking


@dataclass(frozen=True, slots=True)
class ByteSpec:
    """All bit-fields that share the same byte offset."""

    index: int  # byte position in the frame
    bits: Tuple[BitSpec, ...]  # one or more logical fields
    comment: str = ""  # optional human-readable note
    size: int = 1  # always 1 for this frame


# ──────────────────────── frame description ───────────────────────
class DataFrameConfig:  # pylint: disable=too-few-public-methods
    """Static description of the 5-byte UART measurement frame.

    ┌── Byte 0 ────────────────────────────────────────────────────┐
    │ bits 7-4 : *msg_type*     (high nibble)                      │
    │ bits 3-0 : *msg_length*   (low  nibble, payload bytes count) │
    ├── Byte 1 ── ADC configuration register  (8 bits) ────────────┤
    ├── Byte 2 ── ADC_MSB  (8 bits) ───────────────────────────────┤
    ├── Byte 3 ── ADC_LSB  (8 bits) ───────────────────────────────┤
    └── Byte 4 ── CRC over bytes 0-3 (8-bit XOR) ──────────────────┘
    """

    TABLE: Final[Tuple[ByteSpec, ...]] = (
        ByteSpec(  # Byte 0 ─ header
            index=0,
            bits=(
                BitSpec("msg_type", mask=0xF0, shift=4),
                BitSpec("msg_length", mask=0x0F, shift=0),
            ),
            comment="Header: high nibble = type, low nibble = payload length",
        ),
        ByteSpec(1, (BitSpec("adc_conf", mask=0xFF),), "ADC configuration register"),
        ByteSpec(2, (BitSpec("adc_msb", mask=0xFF),), "ADC result MSB"),
        ByteSpec(3, (BitSpec("adc_lsb", mask=0xFF),), "ADC result LSB"),
        ByteSpec(4, (BitSpec("crc", mask=0xFF),), "8-bit XOR checksum"),
    )

    FRAME_SIZE: Final[int] = len(TABLE)  # == 5


# ───────────────────────── UART parameters ─────────────────────────
class UartConfig:  # pylint: disable=too-few-public-methods
    """UART-related connection parameters."""

    DEVICE_ID: Final[str] = "/dev/ttyUSB0"  # Serial port where the chamber is connected
    BAUDRATE: Final[int] = 9600  # Baud rate for the UART communication
    MAX_UART_MSG_LEN: Final[int] = DataFrameConfig.FRAME_SIZE  # do not modify!!


# ─────────────────────── CSV output defaults ───────────────────────
@dataclass(slots=True)
class CsvWriterConfig:
    """File path, delimiter, and header labels used by :class:`MeasurementStorage`."""

    # Using ClassVar so they are treated as *constants* rather than dataclass fields
    PATH: ClassVar[Final[Path]] = Path("data.csv")
    DELIMITER: ClassVar[Final[str]] = ","
    TIMESTAMP_LABEL: ClassVar[Final[str]] = "time"
    VOLTAGE_LABEL: ClassVar[Final[str]] = "voltage"
