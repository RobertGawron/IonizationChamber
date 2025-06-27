"""Unit tests for :pyclass:`measurement_acquisition.physical_layer.PhysicalLayer`."""

from __future__ import annotations
from unittest.mock import MagicMock, call
import pytest
from serial import Serial, SerialException

from measurement_acquisition.config import UartConfig
from measurement_acquisition.interfaces import IPhysicalLayer
from measurement_acquisition.physical_layer import PhysicalLayer


class TestPhysicalLayer:
    """Verify connection handling, read logic, and protocol compliance."""

    @pytest.fixture()
    def mock_config(self) -> UartConfig:
        """Return a stubbed :class:`UartConfig`."""
        cfg = MagicMock(spec=UartConfig)
        cfg.DEVICE_ID = "COM1"
        cfg.BAUDRATE = 9600
        cfg.MAX_UART_MSG_LEN = 5
        return cfg

    @pytest.fixture()
    def mock_serial(self):
        """Return a mocked :pyclass:`serial.Serial` instance."""
        return MagicMock()

    # ------------------------------------------------------------------ #
    # Constructor behaviour                                              #
    # ------------------------------------------------------------------ #
    def test_initialization(self, mock_config):
        """Constructor stores config and chosen serial factory."""
        physical = PhysicalLayer(mock_config)
        assert physical.config == mock_config
        assert physical.serial_port is None
        assert physical.serial_factory == Serial

        custom_factory = MagicMock()
        physical = PhysicalLayer(mock_config, serial_factory=custom_factory)
        assert physical.serial_factory == custom_factory

    # ------------------------------------------------------------------ #
    # Connection handling                                                #
    # ------------------------------------------------------------------ #
    def test_connect_success(self, mock_config, mock_serial):
        """connect() succeeds when the serial port opens and is online."""
        factory = MagicMock(return_value=mock_serial)
        mock_serial.is_open = True

        physical = PhysicalLayer(mock_config, serial_factory=factory)
        physical.connect()

        factory.assert_called_once_with(port="COM1", baudrate=9600, timeout=None)
        assert physical.serial_port == mock_serial
        mock_serial.flushInput.assert_called_once()

    def test_connect_failure(self, mock_config, mock_serial):
        """connect() raises when port opens but is not reported as open."""
        factory = MagicMock(return_value=mock_serial)
        mock_serial.is_open = False
        physical = PhysicalLayer(mock_config, serial_factory=factory)

        with pytest.raises(ConnectionError, match="Failed to open serial port"):
            physical.connect()

    def test_connect_exception(self, mock_config):
        """connect() wraps SerialException in ConnectionError."""
        factory = MagicMock(side_effect=SerialException("Port busy"))
        physical = PhysicalLayer(mock_config, serial_factory=factory)

        with pytest.raises(ConnectionError, match="Failed to connect: Port busy"):
            physical.connect()

    # ------------------------------------------------------------------ #
    # Reading data                                                       #
    # ------------------------------------------------------------------ #
    def test_get_data_success(self, mock_config, mock_serial):
        """get_data() returns the exact bytes read from the serial port."""
        factory = MagicMock(return_value=mock_serial)
        mock_serial.is_open = True
        mock_serial.read.return_value = b"test_data"

        physical = PhysicalLayer(mock_config, serial_factory=factory)
        physical.connect()

        assert physical.get_data() == b"test_data"
        mock_serial.read.assert_called_once_with(mock_config.MAX_UART_MSG_LEN)

    def test_get_data_not_connected(self, mock_config):
        """get_data() raises if connect() has not been called."""
        physical = PhysicalLayer(mock_config)
        with pytest.raises(ConnectionError, match="Not connected to serial device"):
            physical.get_data()

    def test_get_data_different_length(self, mock_config, mock_serial):
        """get_data() honours runtime changes to MAX_UART_MSG_LEN."""
        factory = MagicMock(return_value=mock_serial)
        mock_serial.is_open = True
        mock_serial.read.return_value = b"longer_test_data"

        physical = PhysicalLayer(mock_config, serial_factory=factory)
        physical.connect()

        physical.config.MAX_UART_MSG_LEN = 16
        assert physical.get_data() == b"longer_test_data"
        mock_serial.read.assert_called_once_with(16)

    # ------------------------------------------------------------------ #
    # Protocol compliance                                                #
    # ------------------------------------------------------------------ #
    def test_interface_compliance(self, mock_config):
        """Physical layer satisfies the :class:`IPhysicalLayer` protocol."""
        physical = PhysicalLayer(mock_config)
        assert isinstance(physical, IPhysicalLayer)
        assert callable(physical.connect)
        assert callable(physical.get_data)

    # ------------------------------------------------------------------ #
    # Retry / partial read logic                                         #
    # ------------------------------------------------------------------ #
    def test_read_retry_mechanism(self, mock_config, mock_serial):
        """Multiple reads return partial then complete data as length changes."""
        factory = MagicMock(return_value=mock_serial)
        mock_serial.is_open = True
        mock_serial.read.side_effect = [b"par", b"tial", b"full_data"]

        physical = PhysicalLayer(mock_config, serial_factory=factory)
        physical.connect()

        physical.config.MAX_UART_MSG_LEN = 5
        assert physical.get_data() == b"par"
        assert physical.get_data() == b"tial"

        physical.config.MAX_UART_MSG_LEN = 9
        assert physical.get_data() == b"full_data"

        assert mock_serial.read.call_count == 3
        mock_serial.read.assert_has_calls([call(5), call(5), call(9)])
