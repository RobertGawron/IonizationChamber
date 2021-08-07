import sys
sys.path.append('../Software/DataAcquisition')

from hardware_connection import HardwareConnection  # noqa: E402
from state_machine import IonizationChamberStateMachine  # noqa: E402
import config  # noqa: E402

if __name__ == "__main__":
    hardware = HardwareConnection(config)
    machine = IonizationChamberStateMachine(hardware)

    while True:
        machine.tick()
