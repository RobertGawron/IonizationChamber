# Toolchain

# Prerequisites

Install Docker. For Windows you need WSL installed first and some Linux image for it.

# Building, running, and stopping a Docker image

For me, using Docker in embedded systems has a key advantage: it eliminates the need for a README filled with outdated commands for setting up the development environment. In reality, such lists are rarely kept up to date (I often forget to update them myself too!). Docker solves this problem by providing a structured list of everything you need to install to get your environment up and running. But it's more than just a list - it's code, meaning it can be verified, maintained, and reused easily.

Build the Docker image by running the following command in the IonizationChamber directory. Rebuild only if the Dockerfile or docker-compose.yml changes:

docker-compose build

Start the Docker Image. Run the following command to start the Docker container:

docker-compose up -d

Log into the Docker Image:

docker-compose exec ionizationchamber bash

To log out from the Docker container, press Ctrl+D.

To stop and clean up the Docker

docker-compose down --remove-orphans

# Building firmware

Log into the Docker container (Building, running, and stopping a Docker image" section).

Run the following commands:

mkdir -p /workspace/build/firmware && cd /workspace/build/firmware 
cmake -DCMAKE_TOOLCHAIN_FILE=/workspace/Software/Firmware/sdcc-stm8.cmake -B . -S /workspace/Software/Firmware/ && cmake --build . -j$(nproc)

oneliner:

mkdir -p /workspace/build/firmware && cd /workspace/build/firmware && cmake -DCMAKE_TOOLCHAIN_FILE=/workspace/Software/Firmware/sdcc-stm8.cmake -B . -S /workspace/Software/Firmware/ && cmake --build . -j$(nproc)


The produced binary is IonizationChamber.ihx.

# Hardware flashing

For first time flashing the IC needs to be unlocked:

stm8flash -c stlinkv2 -p stm8s003f3 -u

Flashing:

stm8flash -c stlinkv2 -p stm8s003f3 -w IonizationChamber.ihx

# C Docs coverage

source /workspace/venv/bin/activate && cd /workspace/build/ && rm -rf /workspace/build/* && cmake /workspace/ && make docs

# C, Python and R Code Formatter

source /workspace/venv/bin/activate && cd /workspace/build/ && cmake /workspace/ && make style

# Firmware Unit Tests and Code Coverage

mkdir -p /workspace/build/ut && cd /workspace/build/ut
cmake -DCMAKE_BUILD_TYPE=Debug /workspace/Software/Firmware/UnitTest/
make -j$(nproc)
make run_all_tests
make coverage

oneliner:

mkdir -p /workspace/build/ut && cd /workspace/build/ut && cmake -DCMAKE_BUILD_TYPE=Debug /workspace/Software/Firmware/UnitTest/ && make -j$(nproc) && make run_all_tests  && make coverage

# C static analyze

source /workspace/venv/bin/activate && cd /workspace/build && cmake .. && make cstatic

Note: cppcheck is explicite not installed, this tool gives so much false warnings and so little actual help that it pointless to use.

# Python static analyze

source /workspace/venv/bin/activate && cd /workspace/build && cmake .. && make pystatic

# Python Unit Test and Code Coverage

source /workspace/venv/bin/activate && cd /workspace/build && cmake .. && make pycoverage

# R static analyze

source /workspace/venv/bin/activate && cd /workspace/build && cmake .. && make rstatic


# Running MeasurementAcquisition scripts

Log into the Docker container (Building, running, and stopping a Docker image" section).

Edit config.py to select the correct COM port for the Ionization Chamber.

Run the data acquisition script. It will log the Ionization Chamber's output to the screen and save it to data.csv for further processing.

python main.py

# UML generation

docker pull plantuml/plantuml-server:jetty

docker run -d -p 8080:8080 plantuml/plantuml-server:jetty

For more details:
https://plantuml.com/starting


# Simulation

source /workspace/venv/bin/activate

pip install -e /workspace/Software/MeasurementAcquisition

cd /workspace/Simulation && python3 main.py

Stop after couple of seconds by pressing Ctr+D, it will generate .cvs file with dummy data

# Credits:
* [stm8flash in Docker](https://github.com/ivankomolin/docker-stm8/blob/master/Dockerfile)

