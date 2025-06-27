# Use Ubuntu 25.04 base
FROM ubuntu:25.04 AS build

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    cmake \
    pkg-config \
    libusb-1.0-0-dev \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/vdudouyt/stm8flash.git \
    && cd stm8flash && make -j$(nproc)

FROM ubuntu:25.04 AS runtime

ENV DEBIAN_FRONTEND=noninteractive

# Install all dependencies in one layer
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
    r-base-core \
    python3-venv \
    libcunit1-dev \
    libcmocka-dev \
    tree \
    vim \
    lcov \
    gcovr \
    clang \
    clang-tidy \
    gcc \
    && rm -rf /var/lib/apt/lists/*

COPY --from=build /stm8flash/stm8flash /usr/bin/

# Create virtual environment and install Python packages
RUN python3 -m venv /workspace/venv \
    && /workspace/venv/bin/pip install --upgrade pip \
    && /workspace/venv/bin/pip install \
        flake8 \
        flake8-html \
        pyserial \
        CodeChecker \
        coverxygen \
        prospector \
        vjunit

# Install R packages
RUN R -e "install.packages(c('latticeExtra', 'gridExtra', 'Hmisc'), repos='http://cran.rstudio.com/')"
RUN R -e 'install.packages("lintr", repos="https://cloud.r-project.org")'
RUN R -e 'install.packages("styler")'


RUN python3 -m venv /workspace/venv \
    && /workspace/venv/bin/pip install --upgrade pip \
    && /workspace/venv/bin/pip install \
        coverage pytest pytest-html black 


#COPY Software/MeasurementAcquisition /workspace/MeasurementAcquisition

#WORKDIR /workspace/MeasurementAcquisition

#RUN python3 -m venv /workspace/venv \
#    && /workspace/venv/bin/pip install --upgrade pip \
#    && /workspace/venv/bin/pip install .


WORKDIR /workspace/build

CMD ["bash"]