import datetime
from ionization_chamber import IonizationChamber


class IonizationChamberStateMachine:
    def __init__(self, hardware):
        self.hardware = hardware
        self.deviceMeasurement = 0.0
        self.nextState = self.initIonizationChamber

    def tick(self):
        self.nextState()

    def initIonizationChamber(self):
        self.chamber = IonizationChamber(self.hardware)
        self.chamber.connect()
        self.nextState = self.initOutputFile

    def initOutputFile(self):
        self.logFile = open('data.csv', 'w')
        self.logFile.write("Time,Counter,DMM\n")
        self.nextState = self.getMeasurementFromIonizationChamber

    def getMeasurementFromIonizationChamber(self):
        self.deviceMeasurement = self.chamber.getMeasurement()
        self.nextState = self.saveMeasurement

    def saveMeasurement(self):
        now = datetime.datetime.now()
        self.logFile.write("{0},{1}\n".format(
            now, self.deviceMeasurement))

        self.logFile.flush()

        self.nextState = self.showMeasurementToUser

    def showMeasurementToUser(self):
        print("{0}".format(self.deviceMeasurement))
        self.nextState = self.getMeasurementFromIonizationChamber
