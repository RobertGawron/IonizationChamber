from transport_layer import TransportLayer
from enum import Enum


class ADC_RESOLUTION(Enum):
    R12 = 1
    R13 = 2
    R14 = 3


def convert(upperByte, lowerByte, resolution):
    """
    based on https://ww1.microchip.com/downloads/en/DeviceDoc/22072b.pdf
    assumed that gain = 1
    """
    def digitalToAnalog(value, lsb, pga):
        return (value * (lsb / pga))

    digitalOutput = (upperByte << 8) | lowerByte

    if resolution == ADC_RESOLUTION.R12:
        return digitalToAnalog(digitalOutput, (1 * 0.01), 1)

    if resolution == ADC_RESOLUTION.R13:
        return digitalToAnalog(digitalOutput, (250 * 0.0000001), 1)

    if resolution == ADC_RESOLUTION.R14:
        return digitalToAnalog(digitalOutput, (62.5 * 0.000001), 1)


class ApplicationLayer:
    def __init__(self, physicalLayer):
        self.transportLayer = TransportLayer(physicalLayer)

    def connect(self):
        self.transportLayer.connect()

    def getMeasurement(self):
        dataIn = self.transportLayer.getFrame()

        (msb, lsb) = (dataIn[2], dataIn[3])
        deviceMeasurement = convert(
            msb, lsb, ADC_RESOLUTION.R14)

        return deviceMeasurement
