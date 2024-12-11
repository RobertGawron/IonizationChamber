
from physical_layer import PhysicalLayer
from state_machine import IonizationChamberStateMachine
import config

if __name__ == "__main__":
    physicalLayer = PhysicalLayer(config)
    machine = IonizationChamberStateMachine(physicalLayer)

    while True:
        machine.tick()
