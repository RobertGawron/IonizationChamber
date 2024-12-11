import datetime
from application_layer import ApplicationLayer
from measurement_storage import MeasurementStorage


class IonizationChamberStateMachine:
    def __init__(self, physicalLayer):
        self.applicationLayer = ApplicationLayer(physicalLayer)
        self.deviceMeasurement = 0.0
        self.measurementStorage = MeasurementStorage()

        self.nextState = self.initIonizationChamber

    def tick(self):
        self.nextState()

    def initIonizationChamber(self):
        self.applicationLayer.connect()

        self.nextState = self.initMeasurementStorage

    def initMeasurementStorage(self):
        self.measurementStorage.connect()

        self.nextState = self.getMeasurementFromIonizationChamber

    def getMeasurementFromIonizationChamber(self):
        self.deviceMeasurement = self.applicationLayer.getMeasurement()

        self.nextState = self.saveMeasurement

    def saveMeasurement(self):
        now = datetime.datetime.now()
        self.measurementStorage.saveMeasurement(now, self.deviceMeasurement)
        self.nextState = self.showMeasurementToUser

    def showMeasurementToUser(self):
        print("{0}".format(self.deviceMeasurement))

        self.nextState = self.getMeasurementFromIonizationChamber
