"""Unit tests for :pyclass:`measurement_acquisition.mcp3425_converter.MCP3425Converter`."""

from __future__ import annotations

import pytest

from measurement_acquisition.mcp3425_converter import (
    MCP3425Converter,
    ADCResolution,
)


class TestMCP3425Converter:  # pylint: disable=too-few-public-methods
    """Validate conversion across resolutions, edge cases, and bad input."""

    @pytest.fixture()
    def converter(self) -> MCP3425Converter:  # noqa: D401  – fixture
        """Return a concrete converter instance for the tests."""
        return MCP3425Converter()

    # ------------------------------------------------------------------
    # Nominal conversion values
    # ------------------------------------------------------------------
    @pytest.mark.parametrize(
        "upper, lower, res, expected",
        [
            # 16‑bit resolution tests (LSB = 62.5 µV)
            (0x00, 0x00, ADCResolution.R16, 0.0),
            (0x7F, 0xFF, ADCResolution.R16, 2.0479375),
            (0x80, 0x00, ADCResolution.R16, -2.048),
            (0x00, 0x01, ADCResolution.R16, 0.0000625),
            (0xFF, 0xFF, ADCResolution.R16, -0.0000625),
            # 14‑bit resolution tests
            (0x00, 0x00, ADCResolution.R14, 0.0),
            (0x7F, 0xFC, ADCResolution.R14, 2.04775),
            (0x80, 0x00, ADCResolution.R14, -2.048),
            (0x00, 0x04, ADCResolution.R14, 0.00025),
            # 12‑bit resolution tests
            (0x00, 0x00, ADCResolution.R12, 0.0),
            (0x7F, 0xF0, ADCResolution.R12, 2.047),
            (0x80, 0x00, ADCResolution.R12, -2.048),
            (0x00, 0x10, ADCResolution.R12, 0.001),
            # Boundary mixes
            (0x7F, 0xFF, ADCResolution.R14, 2.0479375),
            (0x1F, 0xFF, ADCResolution.R16, 0.5119375),
        ],
    )
    def test_converter_values(  # pylint: disable=too-many-arguments,too-many-positional-arguments
        self,
        converter: MCP3425Converter,
        upper: int,
        lower: int,
        res: ADCResolution,
        expected: float,
    ) -> None:
        """Ensure calculated voltage matches expected value within 1e‑6 V."""
        result = converter.convert(upper, lower, res)
        assert result == pytest.approx(expected, abs=1e-6)

    # ------------------------------------------------------------------
    # Graceful fallback on invalid resolution
    # ------------------------------------------------------------------
    def test_invalid_resolution(self, converter: MCP3425Converter) -> None:
        """Passing an unknown resolution string returns 0.0 (legacy behaviour)."""
        result = converter.convert(0x00, 0x00, "invalid")  # type: ignore[arg-type]
        assert result == 0.0

    # ------------------------------------------------------------------
    # Input‑range validation
    # ------------------------------------------------------------------
    @pytest.mark.parametrize(
        "upper, lower, res",
        [
            (-1, 0, ADCResolution.R16),
            (0, -1, ADCResolution.R16),
            (256, 0, ADCResolution.R16),
            (0, 256, ADCResolution.R16),
        ],
    )
    def test_invalid_bytes(
        self, converter: MCP3425Converter, upper: int, lower: int, res: ADCResolution
    ) -> None:
        """Out‑of‑range byte values must raise :class:`ValueError`."""
        with pytest.raises(ValueError):
            converter.convert(upper, lower, res)
