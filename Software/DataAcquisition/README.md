## Setting up development environment on Linux

1.  Install tools via apt-get:

```console
apt-get install screen git sdcc doxygen uncrustify libusb-1.0-0-dev python3-pip texlive-latex-base texlive-latex-extra texlive-extra-utils poppler-utils cmake cppcheck r-base-core shellcheck
```

3. Install python libraries.
```console
pip3 install pyserial
pip3 install flake8 flake8-html
```

4. Install R libraries, run R in command line:
```console
pi@raspberrypi:~/IonizationChamber/software/DataAcquisitionFromDevice $ R

R version 3.5.2 (2018-12-20) -- "Eggshell Igloo"
Copyright (C) 2018 The R Foundation for Statistical Computing
Platform: arm-unknown-linux-gnueabihf (32-bit)
```

Type (write yes on next prompts):

```
install.packages('latticeExtra')
```

```
install.packages('gridExtra')
```

```
install.packages('Hmisc')
```


## Collecting measurements

1. **Edit config.py** to select the correct COM port of Ionization Chamber.

2. **Run data acquisition script**, it will log Ionization Chamber output on the screen and also it will save it to data.csv for further processing.

```
python main.py
```

## Plotting signal value in domain time + plotting histogram

This mode is useful to look on measurement changes over time.

After collecting data run script to post-process it and generate diagrams:

```
Rscript main.R
```

A new .png image with timestamp in its name will be created in directory where script is.

Below is example of such generated plot.

![boxplot](https://raw.githubusercontent.com/RobertGawron/IonizationChamber/master/Documentation/Plots/time_domain_example.png)


## Plotting values from different measurements [(box plot)](https://en.wikipedia.org/wiki/Box_plot)

1. Collect data from different samples as different .csv files.
2. Edit ```boxplot.R```, to match filenames of .cvs files and labels of measurements.
3. Run:

```
Rscript boxplot.R
```

A new .png image with timestamp in its name will be created in directory where script is.

Below is example of such generated plot.

![boxplot](https://raw.githubusercontent.com/RobertGawron/IonizationChamber/master/Documentation/Plots/box_plot_example.png)
