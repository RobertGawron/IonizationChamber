"""Unit tests for CRC helpers and custom exceptions."""

# pylint: disable=too-few-public-methods

from __future__ import annotations

import random
from typing import List

import pytest

from measurement_acquisition.crc import Crc
from measurement_acquisition.transport_layer import InvalidCRC


class TestCustomExceptions:
    """Verify the custom exception hierarchy."""

    def test_invalid_crc_is_exception(self):
        """``InvalidCRC`` must derive from the base ``Exception`` class."""
        assert issubclass(InvalidCRC, Exception)


class TestCrc:
    """Verify that :pyfunc:`Crc.calculate` returns the 8-bit XOR of its input."""

    # ------------------------------------------------------------------ #
    # Deterministic vectors                                              #
    # ------------------------------------------------------------------ #
    @pytest.mark.parametrize(
        ("data", "expected"),
        [
            (bytes([0x00, 0x00, 0x00, 0x00]), 0x00),  # all zeros
            (bytes([0xFF, 0x00, 0x00, 0x00]), 0xFF),  # single byte set
            (bytes([0x12, 0x34, 0x56, 0x78]), 0x12 ^ 0x34 ^ 0x56 ^ 0x78),
            (bytes([0xAB, 0xCD, 0xEF, 0x01]), 0xAB ^ 0xCD ^ 0xEF ^ 0x01),
        ],
    )
    def test_known_vectors(self, data: bytes, expected: int):
        """Result must match a hand-calculated XOR."""
        assert Crc.calculate(data) == expected

    # ------------------------------------------------------------------ #
    # Randomised property-style check                                    #
    # ------------------------------------------------------------------ #
    @pytest.mark.parametrize("seed", range(10))
    def test_random_vectors(self, seed: int):
        """Result should always equal the manual XOR and be within 0-255."""
        random.seed(seed)
        values: List[int] = [random.randint(0, 255) for _ in range(4)]
        payload = bytes(values)
        manual = values[0] ^ values[1] ^ values[2] ^ values[3]

        crc = Crc.calculate(payload)

        assert crc == manual & 0xFF
        assert 0 <= crc <= 0xFF
