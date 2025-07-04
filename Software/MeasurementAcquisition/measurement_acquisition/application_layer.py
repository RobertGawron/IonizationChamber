"""Application layer for measurement acquisition.

Responsible for fetching a raw frame from the transport layer and converting the
ADC result into a voltage suitable for downstream use.
"""

from __future__ import annotations

from measurement_acquisition.config import DataFrameConfig
from measurement_acquisition.interfaces import ITransportLayer
from measurement_acquisition.mcp3425_converter import IADCConverter, MCP3425Converter


class ApplicationLayer:
    """High-level API that turns validated ADC frames into physical voltages."""

    # ------------------------------------------------------------------ #
    # Construction                                                       #
    # ------------------------------------------------------------------ #
    def __init__(
        self,
        transport_layer: ITransportLayer,
        frame_cfg: type[DataFrameConfig] = DataFrameConfig,
        converter: IADCConverter | None = None,
    ) -> None:
        """
        Initialise the application layer.

        Parameters
        ----------
        transport_layer
            Concrete implementation of
            :class:`measurement_acquisition.interfaces.ITransportLayer`.
        frame_cfg
            Class that defines the frame layout; defaults to
            :class:`measurement_acquisition.config.DataFrameConfig`.
        converter
            Converter that maps raw ADC codes to voltages.  If *None*,
            :class:`measurement_acquisition.mcp3425_converter.MCP3425Converter`
            is used.
        """
        self._transport = transport_layer
        self._converter: IADCConverter = converter or MCP3425Converter()

        # Build a {bit_name: byte_index} map so we can locate fields quickly.
        lookup = {bit.name: spec.index for spec in frame_cfg.TABLE for bit in spec.bits}

        try:
            self._conf_idx = lookup["adc_conf"]
            self._msb_idx = lookup["adc_msb"]
            self._lsb_idx = lookup["adc_lsb"]
        except KeyError as exc:  # mis-configured frame
            raise ValueError(
                "frame_cfg must contain 'adc_conf', 'adc_msb' and 'adc_lsb' fields"
            ) from exc

    # ------------------------------------------------------------------ #
    # Public API                                                         #
    # ------------------------------------------------------------------ #
    def connect(self) -> None:
        """Establish the underlying transport connection."""
        self._transport.connect()

    def get_measurement(self) -> float:
        """
        Retrieve, decode, and return one voltage measurement.

        Raises
        ------
        ValueError
            If the received frame is shorter than expected.
        """
        frame = self._transport.get_frame()

        if len(frame) <= max(self._msb_idx, self._lsb_idx):
            raise ValueError("Incomplete frame received")

        msb = frame[self._msb_idx]
        lsb = frame[self._lsb_idx]
        adc_conf = frame[self._conf_idx]  # resolution / PGA information

        return self._converter.convert(msb, lsb, adc_conf)
