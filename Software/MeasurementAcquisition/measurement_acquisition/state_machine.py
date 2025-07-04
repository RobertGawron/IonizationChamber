"""State machine orchestrating the measurement-acquisition cycle."""

from __future__ import annotations

from datetime import datetime
from typing import Callable

from measurement_acquisition.application_layer import ApplicationLayer
from measurement_acquisition.interfaces import IMeasurementStorage

__all__ = ["StateMachine"]


class StateMachine:  # pylint: disable=too-few-public-methods
    """Finite-state machine that coordinates measurement acquisition."""

    # ------------------------------------------------------------------ #
    # Construction                                                       #
    # ------------------------------------------------------------------ #
    def __init__(
        self,
        application_layer: ApplicationLayer,
        measurement_storage: IMeasurementStorage,
        now_func: Callable[[], datetime] | None = None,
    ) -> None:
        """Create a new :class:`StateMachine`.

        Parameters
        ----------
        application_layer
            Pre-configured :class:`ApplicationLayer` that hides lower layers
            (physical and transport) and delivers validated measurements.
        measurement_storage
            Back-end responsible for persisting readings.
        now_func
            Optional clock for deterministic testing.  Defaults to
            :pyfunc:`datetime.datetime.now`.
        """
        self.now_func: Callable[[], datetime] = now_func or datetime.now

        # Sub-components ------------------------------------------------
        self.application_layer = application_layer
        self.measurement_storage = measurement_storage

        # Runtime state -------------------------------------------------
        self.device_measurement: float | None = None
        self.next_state: Callable[[], None] = self._init_ionization_chamber

    # ------------------------------------------------------------------ #
    # Public API                                                         #
    # ------------------------------------------------------------------ #
    def tick(self) -> None:
        """Advance the state machine by executing the current state handler."""
        self.next_state()

    # ------------------------------------------------------------------ #
    # State handlers (all private)                                       #
    # ------------------------------------------------------------------ #
    def _init_ionization_chamber(self) -> None:
        self.application_layer.connect()
        self.next_state = self._init_measurement_storage

    def _init_measurement_storage(self) -> None:
        self.measurement_storage.connect()
        self.next_state = self._get_measurement_from_ionization_chamber

    def _get_measurement_from_ionization_chamber(self) -> None:
        self.device_measurement = self.application_layer.get_measurement()
        self.next_state = self._save_measurement

    def _save_measurement(self) -> None:
        if self.device_measurement is None:
            raise RuntimeError("No measurement available to save.")

        timestamp = self.now_func().isoformat(sep=" ", timespec="milliseconds")
        self.measurement_storage.save_measurement(timestamp, self.device_measurement)
        self.next_state = self._show_measurement_to_user

    def _show_measurement_to_user(self) -> None:
        print(self.device_measurement)
        self.next_state = self._get_measurement_from_ionization_chamber
