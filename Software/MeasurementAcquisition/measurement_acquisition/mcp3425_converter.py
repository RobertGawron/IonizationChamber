"""Microchip MCP3425 ADC conversion helpers.

This module isolates all MCP3425‑specific logic so higher‑level layers (e.g.
*application_layer.py*) can import it directly without redefining anything.

The API is intentionally identical to what the unit tests already expect, so
no further code changes are required once you replace the old inline
implementation with::

    from measurement_acquisition.mcp3425_converter import (
        MSB_POS,
        LSB_POS,
        ADCResolution,
        IADCConverter,
        MCP3425Converter,
    )
"""

from __future__ import annotations

from enum import Enum
from typing import Protocol, ClassVar

# ----------------------------------------------------------------------------
# Default positions of measurement bytes within a transport frame.  Override
# these at runtime if your firmware uses a different layout.
# ----------------------------------------------------------------------------
MSB_POS: int = 2
LSB_POS: int = 3


class ADCResolution(Enum):
    """ADC resolution settings in bits for the MCP3425."""

    R12 = 12
    R14 = 14
    R16 = 16  # MCP3425 supports 12‑, 14‑, and 16‑bit resolutions


class IADCConverter(Protocol):  # pylint: disable=too-few-public-methods
    """Protocol that all ADC converters must implement."""

    def convert(
        self, upper_byte: int, lower_byte: int, resolution: ADCResolution
    ) -> float:  # noqa: D401
        """Convert raw ADC bytes to engineering units (volts)."""


class MCP3425Converter(IADCConverter):  # pylint: disable=too-few-public-methods
    """ADC conversion implementation for the Microchip MCP3425."""

    BASE_LSB: ClassVar[float] = 62.5e-6  # 62.5 µV for 16‑bit full‑scale

    def convert(
        self, upper_byte: int, lower_byte: int, resolution: ADCResolution
    ) -> float:  # noqa: D401
        """Convert two bytes from the MCP3425 into a signed voltage."""
        # Validate input bytes
        if not 0 <= upper_byte <= 0xFF or not 0 <= lower_byte <= 0xFF:
            raise ValueError("Byte values must be between 0 and 255")

        # Combine bytes
        raw_value = (upper_byte << 8) | lower_byte

        # Convert to signed integer (two's complement)
        if raw_value >= 0x8000:
            raw_value -= 0x10000

        # Voltage = signed raw value * base LSB
        return raw_value * self.BASE_LSB


__all__ = [
    "MSB_POS",
    "LSB_POS",
    "ADCResolution",
    "IADCConverter",
    "MCP3425Converter",
]
