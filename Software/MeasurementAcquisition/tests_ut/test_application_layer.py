"""Unit tests for :pyclass:`measurement_acquisition.application_layer.ApplicationLayer`."""

# pylint: disable=protected-access

from __future__ import annotations

from unittest.mock import MagicMock, create_autospec

import pytest

from measurement_acquisition.application_layer import ApplicationLayer, MCP3425Converter
from measurement_acquisition.interfaces import ITransportLayer


class TestApplicationLayer:  # pylint: disable=too-few-public-methods
    """Behaviour and input-validation tests for :class:`ApplicationLayer`."""

    # ------------------------------------------------------------------ #
    # Fixtures                                                           #
    # ------------------------------------------------------------------ #
    @pytest.fixture()
    def mock_transport(self):  # noqa: D401
        """Autospecced transport-layer mock."""
        return create_autospec(ITransportLayer)

    @pytest.fixture()
    def mock_converter(self):  # noqa: D401
        """Generic mock converter implementing :class:`IADCConverter`."""
        return MagicMock()

    @pytest.fixture()
    def app_layer(self, mock_transport, mock_converter):  # noqa: D401
        """Default-configured :class:`ApplicationLayer`."""
        return ApplicationLayer(mock_transport, converter=mock_converter)

    # ------------------------------------------------------------------ #
    # Constructor behaviour                                              #
    # ------------------------------------------------------------------ #
    def test_initialization(self, mock_transport, mock_converter):
        """Verify default and custom initialisation paths."""
        # Defaults -----------------------------------------------------
        app = ApplicationLayer(mock_transport)
        assert isinstance(
            app._converter, MCP3425Converter
        )  # pylint: disable=protected-access

        # Custom converter --------------------------------------------
        app = ApplicationLayer(mock_transport, converter=mock_converter)
        assert app._converter is mock_converter  # pylint: disable=protected-access

    # ------------------------------------------------------------------ #
    # Transport connection                                               #
    # ------------------------------------------------------------------ #
    def test_connect(self, app_layer, mock_transport):
        """``connect`` should delegate to the transport layer."""
        app_layer.connect()
        mock_transport.connect.assert_called_once()

    # ------------------------------------------------------------------ #
    # Happy-path measurement retrieval                                   #
    # ------------------------------------------------------------------ #
    def test_get_measurement_success(self, app_layer, mock_transport, mock_converter):
        """Successful frame retrieval and conversion."""
        # Frame layout from DataFrameConfig:
        #   byte 0 : header
        #   byte 1 : adc_conf   (e.g. 0xA0 : R12, gain×1, etc.)
        #   byte 2 : adc_msb
        #   byte 3 : adc_lsb
        #   byte 4 : crc  (ignored by ApplicationLayer)
        mock_frame = bytes([0x00, 0xA0, 0xAB, 0xCD, 0x00])
        mock_transport.get_frame.return_value = mock_frame
        mock_converter.convert.return_value = 3.1415

        result = app_layer.get_measurement()

        assert result == 3.1415
        mock_transport.get_frame.assert_called_once()
        mock_converter.convert.assert_called_with(0xAB, 0xCD, 0xA0)

    # ------------------------------------------------------------------ #
    # Error handling – incomplete frames                                 #
    # ------------------------------------------------------------------ #
    def test_invalid_frame(self, app_layer, mock_transport):
        """An incomplete frame must raise ``ValueError``."""
        # Too short (only header + conf)
        mock_transport.get_frame.return_value = bytes([0x00, 0x00])
        with pytest.raises(ValueError, match="Incomplete frame received"):
            app_layer.get_measurement()
