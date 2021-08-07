
from hardware_connection import HardwareConnection
from state_machine import IonizationChamberStateMachine
import config

if __name__ == "__main__":
    hardware = HardwareConnection(config)
    machine = IonizationChamberStateMachine(hardware)

    while True:
        machine.tick()
