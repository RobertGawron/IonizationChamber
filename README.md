# IonizationChamber

**Current version not fully tested and has many HW bugs.**
When air's atoms are hit by radioactive particles, an ion-pair is produced. Ions has electric charge, if they are in electric field create by positive and negative electrodes, negative ions will move to positive electrode and positive will move to negative electrode. They will try to "meet each other" (I don't know how to explain it) thus creating a current. This current can be measured.

The current is proportional to amount of ion-pairs. Amount of ion-pairs is proportional to radioactivity level.

Hardware is made of:
* Ionization chamber (two electrodes mentioned above)
* Amplifier (first stage is transimpedance amplifier, not FET transistor like most projects use)
* DC/DC converter to create 400V DC voltage for polarization of ionization chamber
* Data acquisition
  * Peak value measurement
  * Actual value measurement
  * Pulse counter
  * Three diodes as user interface
  * STM8 chip to collect data
  * UART interface to send data to PC.

Software is made of:
* Compilation via sdcc (has to be installed)
* Flashing is done via stm8flash tool (has to installed)
* Building project is done via makefile (has to be installed)
* Communication with peripherals is done via STM8S_StdPeriph_Lib library (included in repository, no need to download it separably)

Software is done in a way so that it's possible to develop it remotely (I'm using Raspberry).

Below is the picture of actual version, it has digital part and DC/Dc converter, soldering is terrible, but it works.


![sensor render](https://raw.githubusercontent.com/RobertGawron/IonizationChamber/master/documentation/pictures/pcb_13_07_2019.jpg)

 
