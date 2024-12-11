# Use an official Ubuntu as a base image
FROM ubuntu:20.04 AS build

# Set environment variables to prevent interaction during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install basic dependencies in the first RUN command
RUN apt-get update && apt-get install -y \
    sdcc \
    build-essential \
    cmake \
    && rm -rf /var/lib/apt/lists/*

# Install remaining dependencies in the second RUN command
RUN apt-get update && apt-get install -y \
    git \
    make \
    pkg-config \
    libusb-1.0-0-dev \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y    screen git sdcc doxygen uncrustify libusb-1.0-0-dev python3-pip poppler-utils cmake cppcheck r-base-core shellcheck




# Install stm8flash
RUN git clone https://github.com/vdudouyt/stm8flash.git
RUN cd stm8flash && make -j$(nproc)

# Use another Ubuntu image for runtime
FROM ubuntu:20.04 AS runtime

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    libusb-1.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Copy the stm8flash binary from the build stage
COPY --from=build /workspace/build/stm8flash/stm8flash /usr/bin/

# Copy other required files
COPY --from=build /usr/share/sdcc /usr/share/
COPY --from=build /lib/x86_64-linux-gnu/libusb-1.0* /lib/x86_64-linux-gnu/


# Create workspace directory and set it as the working directory
RUN mkdir -p /workspace/build
WORKDIR /workspace/build

# Command to run the container
CMD ["bash"]
