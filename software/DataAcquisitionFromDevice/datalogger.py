from serial import Serial
import datetime

myDeviceId = '/dev/ttyUSB0'
myBaudrate = 9600 
ser = Serial(myDeviceId,  baudrate=9600)

ser.isOpen()
logFile = open('data.log', 'w')
logFile.write("Time,Counter\n")

while True:
    #dataIn = int(ord(ser.readline().strip()))
    dataIn = ser.readline().strip()
    msb = dataIn[0] 
    lsb = dataIn[1]
    voltage = ((dataIn[0] & 0xf) << 8) | lsb;

    now = datetime.datetime.now()
    logFile.write("{0},{1}\n".format(now, dataIn))
    logFile.flush()

    print(dataIn)
    print(voltage)


