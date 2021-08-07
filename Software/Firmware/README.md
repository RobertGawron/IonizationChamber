# Setting up development environment on Linux

1.  Install tools via apt-get:

```console
apt-get install screen git sdcc doxygen uncrustify libusb-1.0-0-dev python3-pip texlive-latex-base texlive-latex-extra texlive-extra-utils poppler-utils cmake cppcheck r-base-core shellcheck
```
Note: libusb is needed by stm8flash.

2. Clone, build and install stm8flash:

```console
git clone https://github.com/vdudouyt/stm8flash.git
cd stm8flash/
make
make install
```

3. Stm8flash enumerates as USB device, add access to this device for non-root users (so that its possible to flash the chip without being root):

```console
chmod o+w /dev/bus/usb/001/004
```

In above example, _/dev/bus/usb/001/004_ is where the stm8flash enumerates, you will get id of your stm8flash from error message when trying to flash the board.

# Firmware compilation and hardware flashing

## Initial configuration

Configure project using cmake, this step is needed only once.

In Software directory create build directory and go into it:

```
mkdir build
cd build
```

Run cmake:

```
cmake -DCMAKE_SYSTEM_NAME=Generic -DCMAKE_C_COMPILER=sdcc ../
```

## Compilation

Compilation is done using make in the directory where cmake files were generated (Software/Build)

```
make
```

Binary will be stored directory where makefile is.

# Hardware flashing

```
stm8flash -c stlink -p stm8s003f3  -w IonizationChamber.ihx
```
