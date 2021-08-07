

class InvalidCRC(Exception):
    pass


class MissingFrame(Exception):
    pass


class InvalidMsgLength(Exception):
    pass


class TransportLayer:
    def __init__(self, physicalLayer):
        self.physicalLayer = physicalLayer

    def connect(self):
        self.physicalLayer.connect()

    def getFrame(self):
        return self.physicalLayer.getData()
