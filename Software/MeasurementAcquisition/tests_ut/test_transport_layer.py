"""Unit tests for :pyclass:`measurement_acquisition.transport_layer.TransportLayer`."""

# pylint: disable=protected-access

from __future__ import annotations

from unittest.mock import create_autospec

import pytest

from measurement_acquisition.config import DataFrameConfig
from measurement_acquisition.interfaces import IPhysicalLayer
from measurement_acquisition.transport_layer import (
    TransportLayer,
    InvalidCRC,
    MissingFrame,
    InvalidMsgLength,
)


# ---------------------------- helpers --------------------------------- #
def _make_valid_frame(first4: bytes = b"\x00\x00\x00\x00") -> bytes:
    """Return a 5-byte frame whose CRC (last byte) is XOR of the first four."""
    crc = 0
    for b in first4:
        crc ^= b
    return first4 + bytes([crc])


# --------------------------- test-suite -------------------------------- #
class TestTransportLayer:
    """Verify the TransportLayer façade around IPhysicalLayer."""

    # ------------------------------------------------------------------ #
    # Existence of custom exceptions                                    #
    # ------------------------------------------------------------------ #
    def test_custom_exceptions(self):
        """Exceptions inherit from :class:`Exception`."""
        assert issubclass(MissingFrame, Exception)
        assert issubclass(InvalidMsgLength, Exception)

    # ------------------------------------------------------------------ #
    # Constructor behaviour                                             #
    # ------------------------------------------------------------------ #
    def test_initialization(self):
        """Constructor stores the physical-layer reference and cfg."""
        mock_physical = create_autospec(IPhysicalLayer)
        layer = TransportLayer(mock_physical)

        # Private attributes are fine to peek at in unit tests
        assert layer._phy is mock_physical  # type: ignore[attr-defined,protected-access]
        assert layer._cfg is DataFrameConfig  # type: ignore[attr-defined,protected-access]

    # ------------------------------------------------------------------ #
    # Delegation & validation                                           #
    # ------------------------------------------------------------------ #
    def test_connect_calls_physical_layer(self):
        """connect() delegates to IPhysicalLayer.connect()."""
        mock_physical = create_autospec(IPhysicalLayer)

        TransportLayer(mock_physical).connect()

        mock_physical.connect.assert_called_once()

    def test_get_frame_returns_validated_data(self):
        """get_frame() fetches data and returns it unchanged after validation."""
        mock_physical = create_autospec(IPhysicalLayer)
        valid_frame = _make_valid_frame()
        mock_physical.get_data.return_value = valid_frame

        frame = TransportLayer(mock_physical).get_frame()

        mock_physical.get_data.assert_called_once()
        assert frame == valid_frame[:-1]  # CRC is not forwarded

    # ------------------------------------------------------------------ #
    # Validation errors                                                 #
    # ------------------------------------------------------------------ #
    def test_invalid_length_raises(self):
        """Frames with wrong length raise InvalidMsgLength."""
        mock_physical = create_autospec(IPhysicalLayer)
        mock_physical.get_data.return_value = b"\x00\x00\x00\x00"  # 4 bytes only

        with pytest.raises(InvalidMsgLength):
            TransportLayer(mock_physical).get_frame()

    def test_invalid_crc_raises(self):
        """Checksum mismatch raises InvalidCRC."""
        mock_physical = create_autospec(IPhysicalLayer)
        # XOR of first four bytes is 0x01, but we provide 0x02
        mock_physical.get_data.return_value = b"\x01\x01\x01\x01\x02"

        with pytest.raises(InvalidCRC):
            TransportLayer(mock_physical).get_frame()

    def test_missing_frame_raises(self):
        """Empty read raises MissingFrame."""
        mock_physical = create_autospec(IPhysicalLayer)
        mock_physical.get_data.return_value = b""

        with pytest.raises(MissingFrame):
            TransportLayer(mock_physical).get_frame()

    # ------------------------------------------------------------------ #
    # Interface compliance                                              #
    # ------------------------------------------------------------------ #
    def test_interface_compliance(self):
        """Constructor enforces IPhysicalLayer protocol."""
        valid_physical = create_autospec(IPhysicalLayer)
        TransportLayer(valid_physical)  # should not raise

        class InvalidPhysical:
            """Incomplete implementation for negative testing."""

            def connect(self) -> None:
                raise NotImplementedError

            def status(self) -> str:
                return "idle"

        with pytest.raises(TypeError):
            TransportLayer(InvalidPhysical())

        with pytest.raises(TypeError):
            TransportLayer("not a physical layer")
