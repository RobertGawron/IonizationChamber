# Use an official Ubuntu as a base image
FROM ubuntu:25.04 AS build

# Set environment variables to prevent interaction during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install git, build tools, and dependencies
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    cmake \
    pkg-config \
    libusb-1.0-0-dev \
    sdcc \
    && rm -rf /var/lib/apt/lists/*

# Command to run the container
CMD ["bash"]
