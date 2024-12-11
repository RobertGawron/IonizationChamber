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

docker-compose exec app bash

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

# Hardware flashing

Log into the Docker container (Building, running, and stopping a Docker image" section).

The stm8flash tool enumerates as a USB device. To allow non-root users to access this device (making it possible to flash the chip without root permissions), run the following command:

chmod o+w /dev/bus/usb/001/004

In the example above, /dev/bus/usb/001/004 is the location where stm8flash enumerates. You can identify the correct ID for your stm8flash device from the error message received when attempting to flash the board.

To flash the firmware to the board, use the following command:

stm8flash -c stlink -p stm8s003f3 -w IonizationChamber.ihx

## Running MeasurementAcquisition scripts

Log into the Docker container (Building, running, and stopping a Docker image" section).

Edit config.py to select the correct COM port for the Ionization Chamber.

Run the data acquisition script. It will log the Ionization Chamber's output to the screen and save it to data.csv for further processing.

python main.py

## Running Simulation

Log into the Docker container and navigate to the simulation directory:

cd /workspace/Simulation/

Run the following command:

python3 main.py

Press Ctrl+C after a few seconds.

The generated .csv file will be located at:

/workspace/Simulation/data.csv

# Credits:
* [stm8flash in Docker](https://github.com/ivankomolin/docker-stm8/blob/master/Dockerfile)