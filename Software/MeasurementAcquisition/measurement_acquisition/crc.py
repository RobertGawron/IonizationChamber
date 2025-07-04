"""CRC utilities used by the transport layer.

This module centralises everything related to cyclic-redundancy checks so that
other parts of the codebase can simply import :class:`InvalidCRC` or
:class:`Crc`.

The algorithm matches the C macro GET_CRC_4_BYTES:
    checksum = b1 ^ b2 ^ b3 ^ b4  (result kept to 8 bits)
"""

from __future__ import annotations

from typing import Final

__all__: Final = ["InvalidCRC", "Crc"]


class InvalidCRC(Exception):
    """CRC check failed while validating an incoming frame."""


class Crc:  # pylint: disable=too-few-public-methods
    """Helper class for calculating the 8-bit XOR checksum used on the C side."""

    @staticmethod
    def calculate(data: bytes) -> int:  # noqa: D401
        """Return the 8-bit XOR checksum of *data*.

        Parameters
        ----------
        data
            Exactly **four** bytes to be checksummed.

        Returns
        -------
        int
            Unsigned 8-bit result (0-255 inclusive).
        """
        checksum: int = 0
        for byte in data:
            checksum ^= byte

        # Ensure result is an unsigned 8-bit value like the C macro.
        return checksum & 0xFF
