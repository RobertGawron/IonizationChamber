cmake_minimum_required(VERSION 3.16)

# Compiler setup
set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_SYSTEM_NAME Generic)

# Prevent default configuration
set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")

project(IonizationChamber C)

# Global compiler flags
set(CMAKE_C_FLAGS "-mstm8 --std-sdcc11 --std-c99 -DSTM8S003 -D__SDCC__ -DUSE_STDPERIPH_DRIVER")

# Include directories
include_directories(
    ${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc
    ${CMAKE_SOURCE_DIR}/Application
    ${CMAKE_SOURCE_DIR}/Device
    ${CMAKE_SOURCE_DIR}/Driver
    ${CMAKE_SOURCE_DIR}
)

# Create STM8 Standard Peripheral Library
add_library(STM8StdPeriph STATIC
    STM8S_StdPeriph_Lib/src/stm8s_gpio.c
    STM8S_StdPeriph_Lib/src/stm8s_i2c.c
    STM8S_StdPeriph_Lib/src/stm8s_tim1.c
    STM8S_StdPeriph_Lib/src/stm8s_clk.c
    STM8S_StdPeriph_Lib/src/stm8s_uart1.c
)

# Set library-specific properties
set_target_properties(STM8StdPeriph PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
    OUTPUT_NAME "stm8s"
)

# Main executable
add_executable(IonizationChamber
    main.c
    assert_impl.c
    Application/app_builder.c
    Application/data_acquisition.c
    Driver/user_interface.c
    Driver/clk_conf.c
    Driver/timer_conf.c
)

# Link library to executable
target_link_libraries(IonizationChamber PRIVATE STM8StdPeriph)

