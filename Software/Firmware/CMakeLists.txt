cmake_minimum_required(VERSION 3.16)

# 1. FORCE SDCC COMPILER - MUST BE BEFORE PROJECT()
set(CMAKE_SYSTEM_NAME Generic)

# Find SDCC and use absolute path
find_program(SDCC_PATH sdcc REQUIRED)
message(STATUS "Using SDCC compiler: ${SDCC_PATH}")
set(CMAKE_C_COMPILER ${SDCC_PATH} CACHE FILEPATH "SDCC C Compiler" FORCE)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)  # Critical for SDCC
set(CMAKE_C_COMPILER_FORCED TRUE)  # Bypass compiler checks

# 2. SDCC-SPECIFIC SETTINGS
project(IonizationChamber C)
message(STATUS "Active C compiler: ${CMAKE_C_COMPILER}")  # Verify compiler

set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_EXECUTABLE_SUFFIX ".ihx")

# 3. CRITICAL SDCC FLAGS (AS SEPARATE ITEMS)
set(SDCC_FLAGS 
    -mstm8 
    --std-sdcc11 
    --opt-code-size 
    --stack-auto
)
set(SDCC_DEFINITIONS 
    STM8S003
    __SDCC__
    USE_STDPERIPH_DRIVER
)

# Create StdPeriph library
add_library(STM8StdPeriph STATIC
    STM8S_StdPeriph_Lib/src/stm8s_gpio.c
    STM8S_StdPeriph_Lib/src/stm8s_i2c.c
    STM8S_StdPeriph_Lib/src/stm8s_tim1.c
    STM8S_StdPeriph_Lib/src/stm8s_clk.c
    STM8S_StdPeriph_Lib/src/stm8s_uart1.c
)

# Set compiler options and definitions for the library
target_compile_options(STM8StdPeriph PRIVATE
    -mstm8
    --verbose
)

target_compile_definitions(STM8StdPeriph PRIVATE
    STM8S003
    __SDCC__
    USE_STDPERIPH_DRIVER
)


# Set include directories for the library
target_include_directories(STM8StdPeriph PUBLIC
${CMAKE_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/Application
    ${CMAKE_SOURCE_DIR}/Device
    ${CMAKE_SOURCE_DIR}/Driver
    ${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc
)


# 7. Executable Target
add_executable(IonizationChamber
    main.c
    Application/application_builder.c
    Application/measurement_frame.c
    Application/measurement_collector.c
    Driver/timer_configurator.c
    Driver/clock_configurator.c
    Driver/user_interface.c
    Driver/stm8_it.c
    Driver/logger.c
    Driver/mcp3425.c
)

# Set include directories for the library
target_include_directories(IonizationChamber PUBLIC
${CMAKE_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/Application
    ${CMAKE_SOURCE_DIR}/Device
    ${CMAKE_SOURCE_DIR}/Driver
    ${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc
)


# 8. Apply SDCC options to executable (FIXED: SEPARATE FLAGS)
target_compile_options(IonizationChamber PRIVATE 
    ${SDCC_FLAGS}  # Now passes as separate arguments
)
target_compile_definitions(IonizationChamber PRIVATE 
    ${SDCC_DEFINITIONS}
)
target_include_directories(IonizationChamber PRIVATE
    ${CMAKE_SOURCE_DIR}/Inc
    ${CMAKE_SOURCE_DIR}/Application
    ${CMAKE_SOURCE_DIR}/Driver
)

target_link_libraries(IonizationChamber PRIVATE STM8StdPeriph)


# 9. Link settings (FIXED: SEPARATE FLAGS)
target_link_options(IonizationChamber PRIVATE
    ${SDCC_FLAGS}  # Separate arguments
    --out-fmt-ihx
)