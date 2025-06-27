"""
Measurement Acquisition package.

Core package for talking to the ionization chamber and
storing/processing measurements.
"""

# Package version
__version__ = "0.1.0"

# Expose the main classes/functions at package level:
from .state_machine import StateMachine
from .transport_layer import TransportLayer, InvalidCRC, MissingFrame, InvalidMsgLength

# Explicit about what gets imported with `from measurement_acquisition import *`
__all__ = [
    "StateMachine",
    "TransportLayer",
    "InvalidCRC",
    "MissingFrame",
    "InvalidMsgLength",
]
