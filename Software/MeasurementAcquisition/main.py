"""Run the acquisition loop continuously; press **q** to quit."""

from __future__ import annotations

import sys
import threading
from measurement_acquisition.config import UartConfig, CsvWriterConfig, DataFrameConfig
from measurement_acquisition.physical_layer import PhysicalLayer
from measurement_acquisition.transport_layer import TransportLayer
from measurement_acquisition.application_layer import ApplicationLayer
from measurement_acquisition.measurement_storage import MeasurementStorage
from measurement_acquisition.state_machine import StateMachine


def build_state_machine() -> StateMachine:
    """Wire together the concrete components required by StateMachine."""
    uart_cfg = UartConfig()
    csv_cfg = CsvWriterConfig()
    frame_cfg = DataFrameConfig()
    physical_layer = PhysicalLayer(uart_cfg)
    transport_layer = TransportLayer(physical_layer, frame_cfg)
    application_layer = ApplicationLayer(transport_layer, frame_cfg)

    return StateMachine(
        application_layer,
        MeasurementStorage(csv_cfg),
    )


def _stdin_watcher(stop_event: threading.Event) -> None:
    """Block on stdin until the user types 'q' (case-insensitive) then set the event."""
    for line in sys.stdin:
        if line.strip().lower() == "q":
            stop_event.set()
            break


def main() -> None:
    """Start acquisition immediately; exit when the user presses ``q``."""
    print("Ionization-Chamber Acquisition is running.")
    print("Press 'q' and hit <Enter> at any time to quit.\n")

    state_machine = build_state_machine()
    stop_event = threading.Event()

    watcher = threading.Thread(target=_stdin_watcher, args=(stop_event,), daemon=True)
    watcher.start()

    try:
        while not stop_event.is_set():
            state_machine.tick()
    except KeyboardInterrupt:
        pass  # allow Ctrl-C as an alternative quit mechanism

    print("Shutting down…")


if __name__ == "__main__":
    main()
