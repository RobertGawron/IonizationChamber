cmake_minimum_required(VERSION 3.16)

# Compiler and system configuration
set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_SYSTEM_NAME Generic)  # No OS target

# Prevent default configurations
set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")

project(IonizationChamber C)

# Library naming conventions
set(CMAKE_STATIC_LIBRARY_PREFIX "")
set(CMAKE_STATIC_LIBRARY_SUFFIX ".lib")
set(CMAKE_SHARED_LIBRARY_PREFIX "")
set(CMAKE_SHARED_LIBRARY_SUFFIX ".lib")
set(CMAKE_IMPORT_LIBRARY_PREFIX "")
set(CMAKE_IMPORT_LIBRARY_SUFFIX "")
set(CMAKE_EXECUTABLE_SUFFIX ".ihx")  # Intel hex format
set(CMAKE_LINK_LIBRARY_SUFFIX ".lib")
set(CMAKE_DL_LIBS "")

# Generates compile_commands.json for IDE integration
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

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

# Executable target (only application sources)
add_executable(IonizationChamber
    main.c

    Application/application_builder.c
    Application/measurement_frame.c
    Application/measurement_collector.c

    Driver/timer_configurator.c
    Driver/clock_configurator.c
    Driver/user_interface.c
    Driver/interrupt_handler.c
    Driver/logger.c
    Driver/mcp3425.c
)

# Set compiler options and definitions for the executable
target_compile_options(IonizationChamber PRIVATE
    -mstm8
)

target_compile_definitions(IonizationChamber PRIVATE
    STM8S003
    __SDCC__
    USE_STDPERIPH_DRIVER
)

# Set include directories for the executable
target_include_directories(IonizationChamber PRIVATE
    ${CMAKE_SOURCE_DIR}/Inc
)

# Link the StdPeriph library to the executable
target_link_libraries(IonizationChamber PRIVATE STM8StdPeriph)

target_link_options(IonizationChamber PRIVATE
    -mstm8
    --out-fmt-ihx
    #--map               # alternative to --out-fmt-map for map file
    #--print-mem-usage
    --verbose
    --stack-auto
)
# Memory limits for STM8S003F3P
set(MAX_ROM_SIZE 8192)  # 8KB flash
set(MAX_RAM_SIZE 1024)  # 1KB RAM

# Find Python 3
find_package(Python3 COMPONENTS Interpreter REQUIRED)

# Add post-build memory check
add_custom_command(TARGET IonizationChamber POST_BUILD
    COMMAND ${Python3_EXECUTABLE} 
        "${CMAKE_SOURCE_DIR}/../../DevOps/Scripts/CheckFirmwareRomRamUsage.py"
        ${MAX_ROM_SIZE}
        ${MAX_RAM_SIZE}
        $<TARGET_FILE_DIR:IonizationChamber>/$<TARGET_FILE_BASE_NAME:IonizationChamber>.map
    
    COMMENT "Verifying memory usage for STM8S003F3P"
    VERBATIM
)