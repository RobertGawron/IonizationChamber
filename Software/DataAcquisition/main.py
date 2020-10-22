import datetime

from IonizationChamber import IonizationChamber 
from dmm import DMM
import config

class IonizationChamberStateMachine:
    def __init__(self, config):
        self.config = config
        self.deviceMeasurement = 0.0
        self.dmmMeasurement = 0.0
        
        self.nextState = self.initIonizationChamber


    def tick(self):
        self.nextState()


    def initIonizationChamber(self):
        self.chamber = IonizationChamber(config)
        self.chamber.connect()
        
        if config.useDMM:
            self.nextState = self.initDMM
        else:
            self.nextState = self.initOutputFile


    def initDMM(self):
        self.dmm = DMM(config)
        self.dmm.connect()
        
        self.nextState = self.initOutputFile


    def initOutputFile(self):
        self.logFile = open('data.csv', 'w')
        self.logFile.write("Time,Counter,DMM\n")
        
        self.nextState = self.getMeasurementFromIonizationChamber


    def getMeasurementFromIonizationChamber(self):
        self.deviceMeasurement = self.chamber.getMeasurement()
        
        if config.useDMM:
            self.nextState = self.getMeasurementFromDMM
        else:
            self.nextState = self.saveMeasurement


    def getMeasurementFromDMM(self):
        self.dmmMeasurement = self.dmm.getMeasurement()
        
        self.nextState = self.saveMeasurement


    def saveMeasurement(self):
        now = datetime.datetime.now()
        self.logFile.write("{0},{1},{2}\n".format(now, self.deviceMeasurement, self.dmmMeasurement))
        self.logFile.flush()
        
        self.nextState = self.showMeasurementToUser


    def showMeasurementToUser(self):
        print("{0}, {1}".format(self.deviceMeasurement, self.dmmMeasurement))
        
        self.nextState = self.getMeasurementFromIonizationChamber


if __name__=="__main__":
    machine = IonizationChamberStateMachine(config)

    while True:
        machine.tick()
