import usbtmc
import matplotlib.pyplot as plt

class DMM:
    def __init__(self, instrumentId):
        self.device = usbtmc.Instrument(instrumentId)

    def performCommand(self, command):
        return self.device.ask(command)

if __name__ == "__main__":
    meassurementAmmount = 50
    dmm = DMM("USB0::0x2A8D::0x1601::INSTR")
    meassurement = []
    #print(float('+2.36756717E+01'))
    for i in range(meassurementAmmount):
        data = float(dmm.performCommand("READ?"))
        meassurement.append(data)
        print(data)
    plt.plot(meassurement)
    plt.show()
    #print(meassurement)