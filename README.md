# Ionization Chamber (a device to measure radioactivity level)

[![Build Status](https://travis-ci.com/RobertGawron/IonizationChamber.svg?branch=master)](https://travis-ci.com/RobertGawron/IonizationChamber)

**Current hardware has many bugs.**

---

## Principle of operation

When air's atoms are hit by radioactive particles, an ion-pair is produced. Ions has electric charge, if they are in electric field create by positive and negative electrodes, negative ions will move to positive electrode and positive will move to negative electrode.

They will try to "meet each other" (I don't know how to explain it) thus creating a current. This current can be measured. The current is proportional to amount of ion-pairs. Amount of ion-pairs is proportional to radioactivity level.

## System architecture

It is designed in a way that the device can work remotely, e.g. no connection via USB cable to user’s PC is needed.

![architecture](https://raw.githubusercontent.com/RobertGawron/IonizationChamber/master/documentation/diagrams/ArchitectureOverview-1.png)

Remarks:
* Amplifier has three stages (first stage is transimpedance amplifier, not FET like most projects use). 
* Amplifier has a separate power supply from 4x2V6 lithium batteries


## Hardware

PCB was done in KiCAD.


## Software
* ["Data processing and firmware flashing" node architecture
](https://github.com/RobertGawron/IonizationChamber/wiki/%22Data-processing-and-firmware-flashing%22-node-architecture
)
* [Setting up development environment on Linux
](https://github.com/RobertGawron/IonizationChamber/wiki/Setting-up-development-environment-on-Linux) 
* [Firmware compilation and hardware flashing
](https://github.com/RobertGawron/IonizationChamber/wiki/Firmware-compilation-and-hardware-flashing) 


## Hazards

* **The device exposes high voltage to user, although maximum current is very limited, it still poses health risk if the sensor external electrode would be touch.**
* **Pins of switch to turn on/off amplifier power supply are very close to metal chassis. It’s possible that pins will be shorted-out by chassis, shorting-out lithium batteries resulting in fire.** I flied off this part of chassis and used insulation tape to avoid it.
