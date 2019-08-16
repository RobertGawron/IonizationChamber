from serial import Serial
import datetime
import mcp3425
import config

ser = Serial(config.myDeviceId, baudrate = config.myBaudrate, timeout=None)

ser.isOpen()
logFile = open('data.csv', 'w')
logFile.write("Time,Counter\n")
ser.flushInput()

while True:
    dataIn = ser.read(5)
    (msb, lsb) = (dataIn[2], dataIn[3]) 
    voltage = mcp3425.convert(msb, lsb, mcp3425.MCP3425_RESOLUTION.R14)
    now = datetime.datetime.now()

    logFile.write("{0},{1}\n".format(now, voltage))
    logFile.flush()

    print(voltage)

