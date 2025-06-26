cmake_minimum_required(VERSION 3.16)

# Compiler setup
set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_SYSTEM_NAME Generic)

# Prevent default configuration
set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")

project(IonizationChamber C)

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

# Create STM8 Standard Peripheral Library
add_library(STM8StdPeriph STATIC
    STM8S_StdPeriph_Lib/src/stm8s_gpio.c
    STM8S_StdPeriph_Lib/src/stm8s_i2c.c
    STM8S_StdPeriph_Lib/src/stm8s_tim1.c
    STM8S_StdPeriph_Lib/src/stm8s_clk.c
    STM8S_StdPeriph_Lib/src/stm8s_uart1.c
)

target_compile_options(STM8StdPeriph PRIVATE ${SDCC_FLAGS})
target_compile_definitions(STM8StdPeriph PRIVATE ${SDCC_DEFINITIONS})

# Library-specific includes (only what the library needs)
target_include_directories(STM8StdPeriph PRIVATE
    ${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc
     ${CMAKE_SOURCE_DIR}
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

# Apply flags using LIST-BASED assignment
target_compile_options(IonizationChamber PRIVATE ${SDCC_FLAGS})
target_compile_definitions(IonizationChamber PRIVATE ${SDCC_DEFINITIONS})

# Executable-specific includes
target_include_directories(IonizationChamber PRIVATE
    ${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc
    ${CMAKE_SOURCE_DIR}/Application
    ${CMAKE_SOURCE_DIR}/Device
    ${CMAKE_SOURCE_DIR}/Driver
    ${CMAKE_SOURCE_DIR}
)

# Link library to executable
target_link_libraries(IonizationChamber PRIVATE STM8StdPeriph)

target_link_options(IonizationChamber PRIVATE
    ${SDCC_FLAGS}  # List-based propagation
    --out-fmt-ihx
)

# Memory limits for STM8S003F3P
set(MAX_ROM_SIZE 8192)  # 8KB flash
set(MAX_RAM_SIZE 1024)  # 1KB RAM

# Find Python 3
#find_package(Python3 COMPONENTS Interpreter REQUIRED)

# Add post-build memory check
#add_custom_command(TARGET IonizationChamber POST_BUILD
#    COMMAND ${Python3_EXECUTABLE} 
#        "${CMAKE_SOURCE_DIR}/../../DevOps/Scripts/CheckFirmwareRomRamUsage.py"
#        ${MAX_ROM_SIZE}
#        ${MAX_RAM_SIZE}
#        $<TARGET_FILE_DIR:IonizationChamber>/$<TARGET_FILE_BASE_NAME:IonizationChamber>.map
#    
#    COMMENT "Verifying memory usage for STM8S003F3P"
#    VERBATIM
#)