# Docker

# Purpose

For me, using Docker in embedded systems has a key advantage: it eliminates the need for a README filled with outdated commands for setting up the development environment. In reality, such lists are rarely kept up to date (I often forget to update them myself too!). Docker solves this problem by providing a structured list of everything you need to install to get your environment up and running. But it's more than just a list - it's code, meaning it can be verified, maintained, and reused easily.

# Prerequisites

Install Docker. For Linux it should be simple, for Windows you need WSL installed first and some Linux image for it.
Build Docker image

# Building, running, and stopping a Docker image

In this step, we will build the Docker image and log into it. Once inside, we can launch the compilation, gather data from the device, run tools like linters, and more.

Build the Docker Image. Navigate to the main directory (IonizationChamber) and run the following command to build the image.
This step is typically done only once and needs to be repeated after any modifications to the Dockerfile or docker-compose.yml:

docker-compose build

Start the Docker Image. Run the following command to start the Docker container:

docker-compose up -d

Log into the Docker Image:

docker-compose exec ionizationchamber  bash

End of Work

To log out from the Docker container, press Ctrl+D.
To stop and clean up the Docker environment, use:

docker-compose down --remove-orphans

# Building firmware

Log into the Docker container (Building, running, and stopping a Docker image" section).

Run the following commands:

cmake ../Software/Firmware/
make -j$(nproc)

The produced binary is IonizationChamber.ihx.

# Build Tests

cmake -DCMAKE_BUILD_TYPE=Debug ../Software/Firmware/UnitTest/
make -j$(nproc)
make run_all_tests


# Docs coverage

clear && rm -rf /workspace/build/* ; cmake .. && make docs

# C static analyse

source /workspace/venv/bin/activate && cd /workspace/build && cmake .. && make cstatic

# Python static analyse

clear && rm -rf /workspace/build/* ; cmake .. && make pystatic

# code formatter

cmake .. && make style


# Hardware flashing


apt install sdcc-ucsim


 stm8flash -c stlinkv2 -p stm8s003f3 -w IonizationChamber.ihx

 stm8flash -c stlink -p stm8s003f3 -w IonizationChamber.ihx


Hardware connection
Section: "Using the ST-LINK on other STM8S applications"
https://www.st.com/resource/en/user_manual/um1482-stm8svldiscovery-stm8s-value-line-discovery-stmicroelectronics.pdf

stm8flash -c stlinkv2 -p stm8s003f3 -u
Determine OPT area
STLink: v2, JTAG: v45, SWIM: v7, VID: 8304, PID: 4837
Due to its file extension (or lack thereof), "Workaround" is considered as RAW BINARY format!
Unlocked device. Option bytes reset to default state.
Bytes written: 11




Log into the Docker container (Building, running, and stopping a Docker image" section).

The stm8flash tool enumerates as a USB device. To allow non-root users to access this device (making it possible to flash the chip without root permissions), run the following command:

chmod o+w /dev/bus/usb/001/004

In the example above, /dev/bus/usb/001/004 is the location where stm8flash enumerates. You can identify the correct ID for your stm8flash device from the error message received when attempting to flash the board.

To flash the firmware to the board, use the following command:

stm8flash -c stlink -p stm8s003f3 -w IonizationChamber.ihx

# Running MeasurementAcquisition scripts

Log into the Docker container (Building, running, and stopping a Docker image" section).

Edit config.py to select the correct COM port for the Ionization Chamber.

Run the data acquisition script. It will log the Ionization Chamber's output to the screen and save it to data.csv for further processing.

python main.py



# Credits:
* [stm8flash in Docker](https://github.com/ivankomolin/docker-stm8/blob/master/Dockerfile)


dont install via apt

openocd -f /usr/share/openocd/scripts/interface/stlink-v2.cfg -f ../Software/stm8s003.cfg

sudo apt-get install   build-essential git autoconf automake libtool pkg-config texinfo   libusb-1.0-0-dev libftdi-dev libhidapi-dev libjaylink-dev 

apt-get install libjim-dev

 add-apt-repository universe
apt update
 apt install libjaylink-dev=0.2.0-1 libjaylink0=0.2.0-1

 apt install libjaylink-dev=0.2.0-1 libjaylink0=0.2.0-1


./bootstrap



./configure \
  --enable-stlink \
  --enable-ftdi \
  --enable-cmsis-dap \
  --enable-debug-gui \
  --disable-werror


make -j$(nproc)
make install

=====
root@faedc67c011c:/workspace/build_firmware/openocd# /usr/local/bin/openocd--version

make a link?
====

works after bash


===


how it install:

make  install-recursive
make[1]: Entering directory '/workspace/build_firmware/openocd'
Making install in testing
make[2]: Entering directory '/workspace/build_firmware/openocd/testing'
Making install in tcl_commands
make[3]: Entering directory '/workspace/build_firmware/openocd/testing/tcl_commands'
make[4]: Entering directory '/workspace/build_firmware/openocd/testing/tcl_commands'
make[4]: Nothing to be done for 'install-exec-am'.
make[4]: Nothing to be done for 'install-data-am'.
make[4]: Leaving directory '/workspace/build_firmware/openocd/testing/tcl_commands'
make[3]: Leaving directory '/workspace/build_firmware/openocd/testing/tcl_commands'
make[3]: Entering directory '/workspace/build_firmware/openocd/testing'
make[4]: Entering directory '/workspace/build_firmware/openocd/testing'
make[4]: Nothing to be done for 'install-exec-am'.
make[4]: Nothing to be done for 'install-data-am'.
make[4]: Leaving directory '/workspace/build_firmware/openocd/testing'
make[3]: Leaving directory '/workspace/build_firmware/openocd/testing'
make[2]: Leaving directory '/workspace/build_firmware/openocd/testing'
make[2]: Entering directory '/workspace/build_firmware/openocd'
make[3]: Entering directory '/workspace/build_firmware/openocd'
 /usr/bin/mkdir -p '/usr/local/bin'
  /bin/bash ./libtool   --mode=install /usr/bin/install -c src/openocd '/usr/local/bin'
libtool: install: /usr/bin/install -c src/openocd /usr/local/bin/openocd
 /usr/bin/mkdir -p '/usr/local/share/openocd/angie'
 /usr/bin/install -c -m 644 src/jtag/drivers/angie/angie_firmware.bin src/jtag/drivers/angie/angie_bitstream.bit '/usr/local/share/openocd/angie'
 /usr/bin/mkdir -p '/usr/local/share/openocd/OpenULINK'
 /usr/bin/install -c -m 644 src/jtag/drivers/OpenULINK/ulink_firmware.hex '/usr/local/share/openocd/OpenULINK'
 /usr/bin/mkdir -p '/usr/local/share/info'
 /usr/bin/install -c -m 644 ./doc/openocd.info ./doc/openocd.info-1 ./doc/openocd.info-2 '/usr/local/share/info'
 /usr/bin/mkdir -p '/usr/local/share/man/man1'
 /usr/bin/install -c -m 644 doc/openocd.1 '/usr/local/share/man/man1'
 /usr/bin/mkdir -p '/usr/local/share/openocd'
 /usr/bin/mkdir -p '/usr/local/share/openocd/contrib'
 /usr/bin/install -c -m 644  contrib/60-openocd.rules '/usr/local/share/openocd/contrib'
 /usr/bin/mkdir -p '/usr/local/share/openocd/contrib/libdcc'
 /usr/bin/install -c -m 644  contrib/libdcc/dcc_stdio.c contrib/libdcc/dcc_stdio.h contrib/libdcc/example.c contrib/libdcc/README '/usr/local/share/openocd/contrib/libdcc'
make  install-data-hook
make[4]: Entering directory '/workspace/build_firmware/openocd'
for i in $(find ./tcl -name '*.cfg' -o -name '*.tcl' -o -name '*.txt' | sed -e 's,^./tcl,,'); do \
        j="/usr/local/share/openocd/scripts/$i" && \
        mkdir -p "$(dirname $j)" && \
        /usr/bin/install -c -m 644 ./tcl/$i $j; \

        ===


openocd -f /usr/local/share/openocd/scripts/interface/stlink.cfg -f /workspace/Software/stm8s003.cfg



===

but abandon scripts and use directly:

openocd   -f interface/stlink.cfg   -f target/stm8s.cfg   -c "in
it"   -c "reset halt"


elff format is OK


apt install gdb -- dont



THIS IS FOR GDB FOR STM8

--- https://github.com/hbend1li/stm8_started


 wget https://sourceforge.net/projects/stm8-binutils-gdb/files/stm8-binutils-gdb-sources-2020-03-22.tar.gz/download -O stm8-binutils-gdb-sources-2018-03-04.tar.gz

 tar -xf stm8-binutils-gdb-sources-2018-03-04.tar.gz

 cd stm8-binutils-gdb-sources

 ./patch_binutils.sh



configure binutils
 --with-python=no


 stm8-gdb /workspace/firmwarev3/IonizationChamber.elf 


stm8-gdb \
  -ex "target extended-remote :3333" \
  -ex "set architecture stm8" \
  -ex "file /workspace/build_firmware/IonizationChamber.elf"


 gdb) target remote :3333
(gdb) load
(gdb) display /i $pc   # Show next instruction
(gdb) stepi            # Single assembly step
(gdb) info registers   # Inspect registers
(gdb) x/10i 0x8000     # Disassemble 10 instructions



stm8flash -c stlinkv2 -p stm8s003f3 -w /workspace/firmwarev3/IonizationChamber.elf



------------


openocd -f interface/stlink.cfg -f target/stm8s.cfg -c "program /workspace/firmwarev3/IonizationChamber.elf verify reset exit"

