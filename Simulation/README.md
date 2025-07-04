# Simulation

## Purpose


This simulation spits out .csv files filled with random values that mimic a real device sending measurements to the PC over UART. It lets us exercise the data-processing scripts without having the actual hardware on hand.

We run the real Python application but swap in a stub for the low-level serial module. That way the identical codebase runs in both simulation and production-only the UART driver gets replaced.

# Usage

[Information on how to use this tool.](../Documentation/Manuals/README.md)
