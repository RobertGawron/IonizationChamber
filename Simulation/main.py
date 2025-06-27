"""Run the acquisition loop continuously; press **q** to quit."""

from __future__ import annotations

import sys
import threading

# sys.path.append("../Software/MeasurementAcquisition")

from mock_serial import MockSerial

from measurement_acquisition.config import (
    UartConfig,
    CsvWriterConfig,
    DataFrameConfig,
)
from measurement_acquisition.physical_layer import PhysicalLayer
from measurement_acquisition.transport_layer import TransportLayer
from measurement_acquisition.application_layer import ApplicationLayer
from measurement_acquisition.measurement_storage import MeasurementStorage
from measurement_acquisition.state_machine import StateMachine


def build_state_machine(mock_serial: MockSerial) -> StateMachine:
    """Wire together the concrete components required by StateMachine."""
    uart_cfg = UartConfig()
    csv_cfg = CsvWriterConfig()
    frame_cfg = DataFrameConfig()

    physical_layer = PhysicalLayer(
        uart_cfg,
        serial_factory=lambda **_: mock_serial,
    )
    transport_layer = TransportLayer(physical_layer, frame_cfg)
    application_layer = ApplicationLayer(transport_layer, frame_cfg)

    return StateMachine(
        application_layer,
        MeasurementStorage(csv_cfg),
    )


def _stdin_watcher(stop_event: threading.Event) -> None:
    """Wait for the user to type 'q' (case-insensitive) and set the stop event."""
    for line in sys.stdin:
        if line.strip().lower() == "q":
            stop_event.set()
            break


def main() -> None:
    """Start acquisition immediately; exit when the user presses ``q``."""
    print("Ionization-Chamber Acquisition is running.")
    print("Press 'q' and hit <Enter> at any time to quit.\n")

    uart_cfg = UartConfig()
    mock_serial = MockSerial(
        port=uart_cfg.DEVICE_ID,
        baudrate=uart_cfg.BAUDRATE,
    )

    state_machine = build_state_machine(mock_serial)

    stop_event = threading.Event()
    threading.Thread(target=_stdin_watcher, args=(stop_event,), daemon=True).start()

    try:
        while not stop_event.is_set():
            state_machine.tick()
    except KeyboardInterrupt:
        pass  # Ctrl-C also quits

    print("Shutting down…")


if __name__ == "__main__":
    main()
