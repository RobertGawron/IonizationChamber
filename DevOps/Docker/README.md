In the main directory (HardwareDataLogger) run the command to build the image.

Build the docker image:

docker-compose build

Start the Docker image:

docker-compose up -d

Log into the Docker image:

docker-compose exec app bash

Additionally at the end of work:

docker-compose down --remove-orphans








build:

docker build -t chamber .

start container:

docker run -it chamber


Credits:
stm8flash in Docker
https://github.com/ivankomolin/docker-stm8/blob/master/Dockerfile