# Ionization Chamber (a device to measure radioactivity level)

---

[![Build Status](https://travis-ci.com/RobertGawron/IonizationChamber.svg?branch=master)](https://travis-ci.com/RobertGawron/IonizationChamber)

**Current has many HW bugs.**

---

## Principle of operation

When air's atoms are hit by radioactive particles, an ion-pair is produced. Ions has electric charge, if they are in electric field create by positive and negative electrodes, negative ions will move to positive electrode and positive will move to negative electrode.

They will try to "meet each other" (I don't know how to explain it) thus creating a current. This current can be measured. The current is proportional to amount of ion-pairs. Amount of ion-pairs is proportional to radioactivity level.

## Overall system architecture

It is designed in a way that the device can work remotely, e.g. no connection via USB cable to user’s PC is needed.

![architecture](https://raw.githubusercontent.com/RobertGawron/IonizationChamber/master/documentation/diagrams/ArchitectureOverview-1.png)

Remarks:
* Amplifier has three stages (first stage is transimpedance amplifier, not FET transistor like most projects use). 
* Amplifier has a separate power supply from 4x2V6 lithium batteries

 

### Power supply

## Hardware

PCB project was done in KiCAD.

It’s a two layer board in size 10cm x 10cm.


TODO

## Software

Software is made of:
* Compilation via sdcc (has to be installed)
* Flashing is done via stm8flash tool (has to installed)
* Building project is done via makefile (has to be installed)
* Communication with peripherals is done via STM8S_StdPeriph_Lib library (included in repository, no need to download it separably)

TODO extend this section.


## Hazards

* **The device exposes high voltage to user, although maximum current is very limited, it still poses health risk if the sensor external electrode would be touch.**
* **Pins of switch to turn on/off amplifier power supply are very close to metal chassis. It’s possible that pins will be shorted-out by chassis, shorting-out lithium batteries resulting in fire.** I flied off this part of chassis and used insulation tape to avoid it.


## Current state

Below is the picture of actual version, it has digital part and DC/Dc converter, soldering is terrible, but it works. There’s no really reason to put this section here, but I like images and graphs :-)

![sensor render](https://raw.githubusercontent.com/RobertGawron/IonizationChamber/master/documentation/pictures/pcb_04_08_2019.jpg)

 
