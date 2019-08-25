import datetime

from IonizationChamber import IonizationChamber 
import config

class IonizationChamberStateMachine:
    def __init__(self, config):
        self.config = config
        self.chamber = IonizationChamber(config)
        self.nextState = self.initIonizationChamber

    def tick(self):
        self.nextState()

    def initIonizationChamber(self):
        self.chamber.openSerialPort()
        self.nextState = self.initOutputFile

    def initOutputFile(self):
        self.logFile = open('data.csv', 'w')
        self.logFile.write("Time,Counter\n")
        self.nextState = self.getMeasurementFromIonizationChamber

    def getMeasurementFromIonizationChamber(self):
        self.deviceMeasurement = self.chamber.acquireFromDevice()
        self.nextState = self.saveMeasurement

    def saveMeasurement(self):
        now = datetime.datetime.now()
        self.logFile.write("{0},{1}\n".format(now, self.deviceMeasurement))
        self.logFile.flush()
        self.nextState = self.showMeasurementToUser

    def showMeasurementToUser(self):
        print(self.deviceMeasurement)
        self.nextState = self.getMeasurementFromIonizationChamber


if __name__=="__main__":
    machine = IonizationChamberStateMachine(config)

    while True:
        machine.tick()
