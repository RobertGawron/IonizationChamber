import datetime
from ionization_chamber import IonizationChamber
from measurement_storage import MeasurementStorage


class IonizationChamberStateMachine:
    def __init__(self, hardware):
        self.hardware = hardware
        self.deviceMeasurement = 0.0
        self.measurementStorage = MeasurementStorage()

        self.nextState = self.initIonizationChamber

    def tick(self):
        self.nextState()

    def initIonizationChamber(self):
        self.chamber = IonizationChamber(self.hardware)
        self.chamber.connect()

        self.nextState = self.initMeasurementStorage

    def initMeasurementStorage(self):
        self.measurementStorage.connect()

        self.nextState = self.getMeasurementFromIonizationChamber

    def getMeasurementFromIonizationChamber(self):
        self.deviceMeasurement = self.chamber.getMeasurement()

        self.nextState = self.saveMeasurement

    def saveMeasurement(self):
        now = datetime.datetime.now()
        self.measurementStorage.saveMeasurement(now, self.deviceMeasurement)
        self.nextState = self.showMeasurementToUser

    def showMeasurementToUser(self):
        print("{0}".format(self.deviceMeasurement))

        self.nextState = self.getMeasurementFromIonizationChamber
