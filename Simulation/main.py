import sys
sys.path.append('../Software/MeasurementAcquisition')

from physical_layer import PhysicalLayer  # noqa: E402
from state_machine import IonizationChamberStateMachine  # noqa: E402
import config  # noqa: E402

if __name__ == "__main__":
    physicalLayer = PhysicalLayer(config)
    machine = IonizationChamberStateMachine(physicalLayer)

    while True:
        machine.tick()
