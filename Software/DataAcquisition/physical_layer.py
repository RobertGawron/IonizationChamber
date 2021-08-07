from serial import Serial


class PhysicalLayer:
    def __init__(self, config):
        self.config = config

    def connect(self):
        self.serialPort = Serial(
            self.config.myDeviceId,
            baudrate=self.config.myBaudrate,
            timeout=None)

        self.serialPort.isOpen()
        self.serialPort.flushInput()

    def getData(self):
        msgLength = 6
        dataIn = self.serialPort.read(msgLength)
        return dataIn
