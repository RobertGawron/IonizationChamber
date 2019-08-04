# based on https://ww1.microchip.com/downloads/en/DeviceDoc/22072b.pdf
# assumed that gain = 1

from enum import Enum
class MCP3425_RESOLUTION(Enum):
    R12 = 1
    R13 = 2
    R14 = 3

def convert(upperByte, lowerByte, resolution):
    digitalToAnalog = lambda value, lsb, pga: (value * (lsb / pga))

    digitalOutput = (upperByte << 8) | lowerByte;


    if resolution == MCP3425_RESOLUTION.R12:
        return digitalToAnalog(digitalOutput, (1 * 0.01), 1)
        
    if resolution == MCP3425_RESOLUTION.R13:
        return digitalToAnalog(digitalOutput, (250 * 0.00001), 1)
 
    if resolution == MCP3425_RESOLUTION.R14:
        return digitalToAnalog(digitalOutput, (62.5 * 0.0001), 1)
