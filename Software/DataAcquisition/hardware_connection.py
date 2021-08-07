from serial import Serial


class HardwareConnection:
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
        return dataIn
