cmake_minimum_required(VERSION 3.31)

project(IonizationChamber C)

# SDCC-specific flags used for both compilation and linking
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

# Add required peripheral source files
set(STM8_LIB_SOURCES
    STM8S_StdPeriph_Lib/src/stm8s_gpio.c
    STM8S_StdPeriph_Lib/src/stm8s_i2c.c
    STM8S_StdPeriph_Lib/src/stm8s_tim1.c
    STM8S_StdPeriph_Lib/src/stm8s_clk.c
    STM8S_StdPeriph_Lib/src/stm8s_uart1.c
)

# Create STM8 Standard Peripheral Library
add_library(STM8StdPeriph STATIC ${STM8_LIB_SOURCES})
target_compile_options(STM8StdPeriph PRIVATE ${SDCC_FLAGS})
target_compile_definitions(STM8StdPeriph PRIVATE ${SDCC_DEFINITIONS})
target_include_directories(STM8StdPeriph PRIVATE
    ${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc
    ${CMAKE_SOURCE_DIR}/
)

# Main executable
add_executable(IonizationChamber
    main.c
    assert_impl.c
    Application/app_builder.c
    Application/data_acquisition.c
    Application/data_frame.c
    Driver/status_leds.c
    Driver/clk_conf.c
    Driver/timer_conf.c
    Driver/mcp3425.c
    Driver/uart.c
)

target_compile_options(IonizationChamber PRIVATE ${SDCC_FLAGS})
target_compile_definitions(IonizationChamber PRIVATE ${SDCC_DEFINITIONS})
target_include_directories(IonizationChamber PRIVATE
    ${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc
    ${CMAKE_SOURCE_DIR}/Application
    ${CMAKE_SOURCE_DIR}/Device
    ${CMAKE_SOURCE_DIR}/Driver
    ${CMAKE_SOURCE_DIR}
)

# Link library to executable
target_link_libraries(IonizationChamber PUBLIC STM8StdPeriph)
target_link_options(IonizationChamber PRIVATE
    ${SDCC_FLAGS}
    --out-fmt-ihx
)

# Memory limits for STM8S003F3P
set(MAX_ROM_SIZE 8192)  # 8 KB flash
set(MAX_RAM_SIZE 1024)  # 1 KB RAM

# Find Python 3
find_package(Python3 COMPONENTS Interpreter REQUIRED)

# Post-build memory check
add_custom_command(TARGET IonizationChamber POST_BUILD
    COMMAND ${Python3_EXECUTABLE}
        "${CMAKE_SOURCE_DIR}/../../DevOps/Scripts/CheckFirmwareRomRamUsage.py"
        ${MAX_ROM_SIZE}
        ${MAX_RAM_SIZE}
        $<TARGET_FILE_DIR:IonizationChamber>/$<TARGET_FILE_BASE_NAME:IonizationChamber>.map
    COMMENT "Verifying memory usage for STM8S003F3P"
    VERBATIM
)
