
import mcp3425


class IonizationChamber:
    def __init__(self, ionizationSensor):
        self.ionizationSensor = ionizationSensor

    def connect(self):
        self.ionizationSensor.connect()

    def getMeasurement(self):
        dataIn = self.ionizationSensor.getMeasurement()

        (msb, lsb) = (dataIn[2], dataIn[3])
        deviceMeasurement = mcp3425.convert(
            msb, lsb, mcp3425.MCP3425_RESOLUTION.R14)

        return deviceMeasurement
