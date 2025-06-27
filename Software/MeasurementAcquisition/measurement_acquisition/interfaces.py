"""Common interfaces for dependency inversion.

This module declares lightweight *protocols* (PEP 544) that describe the
expected behaviour of the physical and transport communication layers.  They
are purely structural—think of them as modern, typing‑friendly ABCs.  Concrete
classes (e.g. a USB serial implementation) can simply implement the required
methods without inheriting from the protocols.
"""

from typing import Protocol, runtime_checkable


@runtime_checkable
class IPhysicalLayer(Protocol):
    """Structural interface for physical communication layers."""

    def connect(self) -> None:  # noqa: D401
        """Open a connection to the physical device."""
        pass  # pylint: disable=unnecessary-pass

    def get_data(self) -> bytes:  # noqa: D401
        """Return raw bytes just read from the device."""
        pass  # pylint: disable=unnecessary-pass


@runtime_checkable
class ITransportLayer(Protocol):
    """Structural interface for transport‑layer implementations."""

    def connect(self) -> None:  # noqa: D401
        """Establish the transport‑layer channel (may call *physical.connect*)."""
        pass  # pylint: disable=unnecessary-pass

    def get_frame(self) -> bytes:  # noqa: D401
        """Return a complete, decoded data frame."""
        pass  # pylint: disable=unnecessary-pass


@runtime_checkable
class IMeasurementStorage(Protocol):
    """Structural interface for measurement-storage back-ends."""

    # life-cycle -----------------------------------------------------------
    def connect(self) -> None:  # noqa: D401
        """Open the underlying resource (file, DB connection, etc.)."""
        pass  # pylint: disable=unnecessary-pass

    def disconnect(self) -> None:  # noqa: D401
        """Flush any buffered data and close the resource."""
        pass  # pylint: disable=unnecessary-pass

    # persistence ----------------------------------------------------------
    def save_measurement(self, timestamp: str, voltage: float) -> None:  # noqa: D401
        """Persist one (timestamp, voltage) pair."""
        pass  # pylint: disable=unnecessary-pass
