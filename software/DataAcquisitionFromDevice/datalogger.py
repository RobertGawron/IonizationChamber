from serial import Serial
import datetime
import mcp3425

myDeviceId = '/dev/ttyUSB0'
myBaudrate = 9600 
ser = Serial(myDeviceId,  baudrate=9600)

ser.isOpen()
logFile = open('data.log', 'w')
logFile.write("Time,Counter\n")

while True:
    dataIn = ser.readline().strip()

    (msb, lsb) = (dataIn[0], dataIn[1])
    voltage = mcp3425.convert(msb, lsb, mcp3425.MCP3425_RESOLUTION.R14)
    now = datetime.datetime.now()

    logFile.write("{0},{1}\n".format(now, dataIn))
    logFile.flush()

    print(voltage)

