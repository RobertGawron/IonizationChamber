# IonizationChamber

**Current version of this project is not tested. No tested version exists.**

When air's atoms are hit by radioactive particles, an ion-pair is produced. Ions has electric charge, if they are in electric field create by positive and negative electrodes, negative ions will move to positive electrode and positive will move to negative electrode. They will try to "meet each other" (I don't know how to explain it) thus creating a current. This current can be meassured.

The current is proportional to amount of ion-pairs. Amount of ion-pairs is proportional to radioactivity level.  

The device that is made here has:
* Ionization chamber (two electrodes mentioned above).
* DC/DC converter to create 400V DC voltage for polarization of ionization chamber.
* Amplifier (first stage is transimpedance amplifier, not FET transistor like most projects use).
* ADC converter.

There is a lot of ionization chamber projects on YouTube based on Darlington transistor and antenna connected to its base (first electrode) where some grounded metal can is used as second electrode. I tried to make them and they seems to work, but they don't. Gain and lack of shielding makes them very sensitive to electromagnetic noise. 


![sensor render](https://raw.githubusercontent.com/RobertGawron/IonizationChamber/feature/rev_4_0/documentation/pictures/chamber.png)

