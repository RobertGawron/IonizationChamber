"""Unit tests for the refactored :pyclass:`measurement_acquisition.state_machine.StateMachine`."""

from __future__ import annotations

from datetime import datetime
from unittest.mock import MagicMock, patch

import pytest

from measurement_acquisition.state_machine import StateMachine


class TestStateMachine:
    """Test suite covering state transitions, value persistence, and timing."""

    # ------------------------------------------------------------------
    # Fixtures
    # ------------------------------------------------------------------
    @pytest.fixture()
    def mock_dependencies(self):
        """Return a dictionary with a state machine wired to mocks."""
        mock_app_layer = MagicMock()
        mock_storage = MagicMock()

        # StateMachine now expects (application_layer, measurement_storage)
        sm = StateMachine(mock_app_layer, mock_storage)

        return {
            "sm": sm,
            "mock_app_layer": mock_app_layer,
            "mock_storage": mock_storage,
        }

    # ------------------------------------------------------------------
    # Constructor behaviour
    # ------------------------------------------------------------------
    def test_initialization(self, mock_dependencies):
        """Verify attributes are set and initial state is correct."""
        sm = mock_dependencies["sm"]
        app_layer = mock_dependencies["mock_app_layer"]
        storage = mock_dependencies["mock_storage"]

        assert sm.application_layer == app_layer
        assert sm.measurement_storage == storage
        assert sm.device_measurement is None
        assert sm.next_state == getattr(sm, "_init_ionization_chamber")

    # ------------------------------------------------------------------
    # Full state-transition sequence
    # ------------------------------------------------------------------
    def test_state_transitions(self, mock_dependencies):
        """Ensure the machine walks through all states in the right order."""
        sm = mock_dependencies["sm"]
        app_layer = mock_dependencies["mock_app_layer"]
        storage = mock_dependencies["mock_storage"]

        test_time = datetime(2023, 1, 1, 12, 0, 0)
        sm.now_func = lambda: test_time  # type: ignore[assignment]
        time_iso = test_time.isoformat(sep=" ", timespec="milliseconds")

        # 1) _init_ionization_chamber → _init_measurement_storage
        sm.tick()
        app_layer.connect.assert_called_once()
        assert sm.next_state == getattr(sm, "_init_measurement_storage")

        # 2) _init_measurement_storage → _get_measurement_from_ionization_chamber
        sm.tick()
        storage.connect.assert_called_once()
        assert sm.next_state == getattr(sm, "_get_measurement_from_ionization_chamber")

        # 3) _get_measurement_from_ionization_chamber → _save_measurement
        app_layer.get_measurement.return_value = 42.5
        sm.tick()
        app_layer.get_measurement.assert_called_once()
        assert sm.device_measurement == 42.5
        assert sm.next_state == getattr(sm, "_save_measurement")

        # 4) _save_measurement → _show_measurement_to_user
        sm.tick()
        storage.save_measurement.assert_called_once_with(time_iso, 42.5)
        assert sm.next_state == getattr(sm, "_show_measurement_to_user")

        # 5) _show_measurement_to_user prints and loops back
        with patch("builtins.print") as mock_print:
            sm.tick()
            mock_print.assert_called_once_with(42.5)
        assert sm.next_state == getattr(sm, "_get_measurement_from_ionization_chamber")

    # ------------------------------------------------------------------
    # Multiple-cycle execution
    # ------------------------------------------------------------------
    def test_full_cycle_execution(self, mock_dependencies):
        """Run three consecutive measurement cycles and verify state updates."""
        sm = mock_dependencies["sm"]
        app_layer = mock_dependencies["mock_app_layer"]

        # Bring the machine to the measurement loop
        sm.tick()  # _init_ionization_chamber
        sm.tick()  # _init_measurement_storage

        # First measurement
        app_layer.get_measurement.return_value = 10.0
        sm.tick()  # _get_measurement
        sm.tick()  # _save_measurement
        sm.tick()  # _show_measurement

        # Second measurement
        app_layer.get_measurement.return_value = 20.0
        sm.tick()  # _get_measurement
        assert sm.device_measurement == 20.0
        sm.tick()  # _save_measurement
        sm.tick()  # _show_measurement

        # Third measurement
        app_layer.get_measurement.return_value = 30.0
        sm.tick()  # _get_measurement
        assert sm.device_measurement == 30.0

    # ------------------------------------------------------------------
    # Measurement value persistence across states
    # ------------------------------------------------------------------
    def test_measurement_value_persistence(self, mock_dependencies):
        """Check that self.device_measurement survives all interim states."""
        sm = mock_dependencies["sm"]
        app_layer = mock_dependencies["mock_app_layer"]

        sm.tick()  # _init_ionization_chamber
        sm.tick()  # _init_measurement_storage

        app_layer.get_measurement.return_value = 99.99
        sm.tick()  # _get_measurement
        initial_value = sm.device_measurement

        sm.tick()  # _save_measurement
        assert sm.device_measurement == initial_value

        sm.tick()  # _show_measurement
        assert sm.device_measurement == initial_value

    # ------------------------------------------------------------------
    # Output formatting
    # ------------------------------------------------------------------
    def test_print_output_format(self, mock_dependencies):
        """Verify the value sent to print() is the measurement."""
        sm = mock_dependencies["sm"]
        app_layer = mock_dependencies["mock_app_layer"]

        sm.tick()  # _init_ionization_chamber
        sm.tick()  # _init_measurement_storage
        app_layer.get_measurement.return_value = 123.456
        sm.tick()  # _get_measurement
        sm.tick()  # _save_measurement

        with patch("builtins.print") as mock_print:
            sm.tick()  # _show_measurement
            mock_print.assert_called_once_with(123.456)

    # ------------------------------------------------------------------
    # Timestamp accuracy across multiple cycles
    # ------------------------------------------------------------------
    @patch("measurement_acquisition.state_machine.datetime")
    def test_timestamp_accuracy(self, mock_datetime, mock_dependencies):
        """Ensure each call to save_measurement() uses the correct timestamp."""
        sm = mock_dependencies["sm"]
        storage = mock_dependencies["mock_storage"]
        app_layer = mock_dependencies["mock_app_layer"]

        test_times = [
            datetime(2023, 1, 1, 12, 0, 0),
            datetime(2023, 1, 1, 12, 0, 5),
            datetime(2023, 1, 1, 12, 0, 10),
        ]
        mock_datetime.now.side_effect = test_times
        sm.now_func = mock_datetime.now

        app_layer.get_measurement.return_value = 0.0

        sm.tick()  # _init_ionization_chamber
        sm.tick()  # _init_measurement_storage

        for expected_time in test_times:
            sm.tick()  # _get_measurement
            sm.tick()  # _save_measurement
            sm.tick()  # _show_measurement
            storage.save_measurement.assert_any_call(
                expected_time.isoformat(sep=" ", timespec="milliseconds"),
                pytest.approx(0.0),
            )
