cmake_minimum_required(VERSION 3.5)
project(STM8_IonizationChamber LANGUAGES C)

# SDCC Compiler Configuration
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_SYSTEM_NAME Generic)

# Critical SDCC Flags
set(STM8_CHIP "STM8S003")
set(SDCC_DEBUG_FLAGS "--debug --out-fmt-elf")  # ELF output with debug symbols
set(SDCC_COMMON_FLAGS "-mstm8 -D${STM8_CHIP} -D__SDCC__ -I${CMAKE_SOURCE_DIR}/Inc")

# Compiler and Linker Flags
set(CMAKE_C_FLAGS "${SDCC_COMMON_FLAGS} ${SDCC_DEBUG_FLAGS} --stack-auto --opt-code-size")
set(CMAKE_EXE_LINKER_FLAGS "${SDCC_DEBUG_FLAGS} -Wl-m")

# Output Configuration
set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_EXECUTABLE_SUFFIX ".elf")

# Library Configuration
set(CMAKE_STATIC_LIBRARY_PREFIX "")
set(CMAKE_STATIC_LIBRARY_SUFFIX ".lib")
set(CMAKE_FIND_LIBRARY_SUFFIXES ".lib")

# Override link command for SDCC
set(CMAKE_C_LINK_EXECUTABLE 
    "sdcc <FLAGS> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>"
)

# Include Directories
include_directories(
    ${CMAKE_SOURCE_DIR}/Application
    ${CMAKE_SOURCE_DIR}/Device
    ${CMAKE_SOURCE_DIR}/Driver
    ${CMAKE_SOURCE_DIR}/Inc
    ${CMAKE_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc
)

# Source Files
set(SOURCES
    main.c
    Application/application_builder.c
    Application/measurement_frame.c
    Application/measurement_collector.c
    Driver/stm8_it.c
    Driver/clock_configurator.c
    Driver/timer_configurator.c
    Driver/user_interface.c
    Driver/logger.c
    Driver/mcp3425.c
    STM8S_StdPeriph_Lib/src/stm8s_gpio.c
    STM8S_StdPeriph_Lib/src/stm8s_i2c.c
    STM8S_StdPeriph_Lib/src/stm8s_tim1.c
    STM8S_StdPeriph_Lib/src/stm8s_clk.c
    STM8S_StdPeriph_Lib/src/stm8s_uart1.c
)

# Executable Target
add_executable(IonizationChamber ${SOURCES})

# Post-Build Steps
add_custom_command(TARGET IonizationChamber POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -I elf32-stm8 -O ihex $<TARGET_FILE:IonizationChamber> ${CMAKE_CURRENT_BINARY_DIR}/IonizationChamber.hex
    COMMAND ${CMAKE_OBJCOPY} -I elf32-stm8 -O binary $<TARGET_FILE:IonizationChamber> ${CMAKE_CURRENT_BINARY_DIR}/IonizationChamber.bin
    COMMENT "Generating HEX and BIN files"
)

# Find objcopy
find_program(CMAKE_OBJCOPY NAMES stm8-objcopy sdobjcopy objcopy)
if(NOT CMAKE_OBJCOPY)
    message(FATAL_ERROR "objcopy not found! Install stm8-binutils")
endif()