import csv


class MeasurementStorage:
    def __init__(self):
        self.CVS_FileName = "data.csv"
        self.CVS_Header = ['Time', 'Counter']

    def connect(self):
        CVS_Handler = open(self.CVS_FileName, 'w', encoding='UTF8', newline='')
        self.CVS_Writter = csv.writer(CVS_Handler)
        self.CVS_Writter.writerow(self.CVS_Header)

    def saveMeasurement(self, date, measurement):
         self.CVS_Writter.writerow([date, measurement])
