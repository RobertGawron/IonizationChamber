import usbtmc


class DMM:
    def __init__(self, config):
        self.config = config

    def connect(self):
        self.device = usbtmc.Instrument(self.config.idDMM)

    def getMeasurement(self):
        return self.device.ask(self.config.testCommand)
