from serial import Serial
import mcp3425


class IonizationChamber:
    def __init__(self, config):
        self.config = config

    def connect(self):
        self.serialPort = Serial(
            self.config.myDeviceId,
            baudrate=self.config.myBaudrate,
            timeout=None)

        self.serialPort.isOpen()
        self.serialPort.flushInput()

    def getMeasurement(self):
        dataIn = self.serialPort.read(5)
        (msb, lsb) = (dataIn[2], dataIn[3])
        deviceMeasurement = mcp3425.convert(
            msb, lsb, mcp3425.MCP3425_RESOLUTION.R14)

        return deviceMeasurement
