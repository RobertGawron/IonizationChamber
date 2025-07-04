"""Physical layer implementation for serial communication."""

from typing import Optional, Type
from serial import Serial, SerialException

from .config import UartConfig
from .interfaces import IPhysicalLayer


class PhysicalLayer(IPhysicalLayer):
    """Handles low-level serial communication with hardware."""

    def __init__(
        self, config: UartConfig, serial_factory: Type[Serial] = Serial
    ) -> None:
        """
        Initialize physical layer with configuration.

        Args:
            config: UartConfiguration object
            serial_factory: Factory for creating serial objects (for dependency injection)
        """
        self.config = config
        self.serial_factory = serial_factory
        self.serial_port: Optional[Serial] = None

    def connect(self) -> None:
        """Establish connection with serial device."""
        try:
            self.serial_port = self.serial_factory(
                port=self.config.DEVICE_ID,
                baudrate=self.config.BAUDRATE,
                timeout=None,
            )
        except SerialException as e:
            raise ConnectionError(f"Failed to connect: {str(e)}") from e

        # Verify connection
        if not self.serial_port.is_open:
            raise ConnectionError("Failed to open serial port")

        self.serial_port.flushInput()  # noqa: N802 # Serial API is camelCase by design

    def get_data(self) -> bytes:
        """
        Read data from serial port.

        Returns:
            bytes: Received data

        Raises:
            ConnectionError: If called before establishing connection
        """
        if self.serial_port is None:
            raise ConnectionError("Not connected to serial device")

        return self.serial_port.read(self.config.MAX_UART_MSG_LEN)
