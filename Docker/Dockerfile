# Use an official Ubuntu as a base image
FROM ubuntu:20.04 AS build

# Set environment variables to prevent interaction during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install git, build tools, and dependencies
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    cmake \
    pkg-config \
    libusb-1.0-0-dev \
    && rm -rf /var/lib/apt/lists/*

# Install stm8flash
RUN git clone https://github.com/vdudouyt/stm8flash.git
RUN cd stm8flash && make -j$(nproc)

# Use another Ubuntu image for runtime
FROM ubuntu:20.04 AS runtime

# Set environment variables to prevent interaction during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    libusb-1.0-0 \
    sdcc \
    build-essential \
    cmake \
    git \
    make \
    pkg-config \
    libusb-1.0-0-dev \
    screen \
    doxygen \
    uncrustify \
    python3-pip \
    poppler-utils \
    cppcheck \
    r-base-core \
    shellcheck \
    && rm -rf /var/lib/apt/lists/*

# Copy the stm8flash binary from the build stage
COPY --from=build /stm8flash/stm8flash /usr/bin/

# Create workspace directory and set it as the working directory
RUN mkdir -p /workspace/build
WORKDIR /workspace/build

# Command to run the container
CMD ["bash"]
