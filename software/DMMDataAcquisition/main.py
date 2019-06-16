import datetime
import csv
import usbtmc

class DMM:
    def __init__(self, instrumentId):
        self.device = usbtmc.Instrument(instrumentId)

    def sendCmd(self, command):
        return self.device.ask(command)


if __name__ == "__main__":
    testIterations = 50000
    idDMM = "USB0::0x2A8D::0x1601::INSTR"
    testCommand = "READ?"
    plotYLabel = "voltage"

    dmm = DMM(idDMM)

    with open('SampleOutputFile.csv', mode='w') as sampleOutputFile:
        sampleOutputFileWriter = csv.writer(sampleOutputFile, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
        sampleOutputFileWriter.writerow(["Timestamp", "Measurement"])

        while(True):
            sampleData = float(dmm.sendCmd(testCommand))
            now = datetime.datetime.now()

            sampleOutputFileWriter.writerow([now, sampleData])
            sampleOutputFile.flush()