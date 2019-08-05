from serial import Serial
import datetime
import mcp3425

myDeviceId = '/dev/ttyUSB0'
myBaudrate = 9600 
ser = Serial(myDeviceId, baudrate=9600, timeout=None)

ser.isOpen()
logFile = open('data.log', 'w')
logFile.write("Time,Counter\n")
ser.flushInput()

while True:
    #dataIn = ser.readline().strip()
    dataIn = ser.read(4)

    print(dataIn)
    print(len(dataIn))
    (msb, lsb) = (dataIn[1], dataIn[2]) 
    voltage = mcp3425.convert(msb, lsb, mcp3425.MCP3425_RESOLUTION.R14)
    now = datetime.datetime.now()

    logFile.write("{0},{1}\n".format(now, voltage))
    logFile.flush()

    print(voltage)

