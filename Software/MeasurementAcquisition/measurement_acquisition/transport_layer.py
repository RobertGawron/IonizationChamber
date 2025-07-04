"""Transport-layer abstraction for the measurement acquisition stack.

This module wraps a physical link (UART, USB, etc.) and exposes a minimal
frame-oriented API used by higher-level components.
"""

from __future__ import annotations

from typing import Final

from measurement_acquisition.crc import Crc
from measurement_acquisition.interfaces import IPhysicalLayer
from measurement_acquisition.config import DataFrameConfig

__all__: Final = [
    "InvalidCRC",
    "MissingFrame",
    "InvalidMsgLength",
    "TransportLayer",
]


class InvalidCRC(Exception):
    """CRC check failed while validating an incoming frame."""


class MissingFrame(Exception):
    """No complete frame could be assembled from the underlying byte stream."""


class InvalidMsgLength(Exception):
    """An incoming frame had an unexpected length."""


class TransportLayer:  # pylint: disable=too-few-public-methods
    """Lightweight wrapper around an :class:`IPhysicalLayer` implementation."""

    # ------------------------------------------------------------------ #
    # Construction                                                       #
    # ------------------------------------------------------------------ #
    def __init__(
        self,
        physical_layer: IPhysicalLayer,
        frame_cfg: type[DataFrameConfig] = DataFrameConfig,
    ) -> None:
        """Create a transport layer bound to *physical_layer* and *frame_cfg*.

        Parameters
        ----------
        physical_layer
            Concrete implementation of :class:`measurement_acquisition.interfaces.IPhysicalLayer`.
        frame_cfg
            Class describing the byte-level layout of each frame
            (defaults to :class:`measurement_acquisition.config.DataFrameConfig`).
        """
        if not isinstance(physical_layer, IPhysicalLayer):
            raise TypeError(
                "physical_layer must implement IPhysicalLayer interface. "
                f"Got {type(physical_layer).__name__} instead."
            )

        self._phy = physical_layer
        self._cfg = frame_cfg

    # ------------------------------------------------------------------ #
    # Public API                                                         #
    # ------------------------------------------------------------------ #
    def connect(self) -> None:
        """Establish the underlying physical connection."""
        self._phy.connect()

    def get_frame(self) -> bytes:
        """Fetch one complete frame from the physical layer and validate it.

        Returns
        -------
        bytes
            Raw, **validated** frame data as returned by the device.

        Raises
        ------
        InvalidMsgLength
            If the frame size differs from :pyattr:`DataFrameConfig.FRAME_SIZE`.
        InvalidCRC
            When the checksum byte does not match the calculated XOR.
        MissingFrame
            When the physical layer fails to supply a frame (empty read).
        """
        data = self._phy.get_data()
        if not data:
            raise MissingFrame("No data available from physical layer")

        if len(data) != self._cfg.FRAME_SIZE:
            raise InvalidMsgLength(
                f"Expected {self._cfg.FRAME_SIZE} bytes, got {len(data)}"
            )

        # ------------------------------------------------------------------
        # CRC validation
        # ------------------------------------------------------------------
        crc_index = self._cfg.TABLE[-1].index  # last byte by design
        payload, crc_byte = data[:crc_index], data[crc_index]

        if Crc.calculate(payload) != crc_byte:
            raise InvalidCRC("Checksum mismatch in received frame")

        return payload
