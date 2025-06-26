cmake_minimum_required(VERSION 3.16)

set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_SYSTEM_NAME Generic) # No linux target etc

# Prevent default configuration
set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")

project(IonizationChamber C)
# todo think about new standard
SET(CMAKE_C_FLAGS "-mstm8 --std-sdcc11 --std-c99 -DSTM8S003 -D__SDCC__ -DUSE_STDPERIPH_DRIVER")

include_directories(${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc)
include_directories(${CMAKE_SOURCE_DIR}/Application)
include_directories(${CMAKE_SOURCE_DIR}/Device)

include_directories(${CMAKE_SOURCE_DIR}/Driver)

include_directories(${CMAKE_SOURCE_DIR})

add_executable(IonizationChamber
    main.c
    assert_impl.c
    Application/app_builder.c
    Application/data_acquisition.c

    Driver/user_interface.c
    Driver/clk_conf.c
    Driver/timer_conf.c
    #Driver/stm8_it.c
    #Src/ApplicationBuilder.c
    #Src/ClockConfigurator.c
    #Src/MeasurementFrame
    #Src/UserInterface.c
    #Src/stm8s_it.c
    #Src/Logger.c
    #Src/MeasurementCollector.c
    #Src/TimerConfigurator.c
    #Src/VoltageSensorActualValue.c

    STM8S_StdPeriph_Lib/src/stm8s_gpio.c
    STM8S_StdPeriph_Lib/src/stm8s_i2c.c
    STM8S_StdPeriph_Lib/src/stm8s_tim1.c
    #STM8S_StdPeriph_Lib/src/stm8s_itc.c
    STM8S_StdPeriph_Lib/src/stm8s_clk.c
    STM8S_StdPeriph_Lib/src/stm8s_uart1.c)


# Flash targets
#add_custom_target(flash ALL COMMAND stm8flash -c stlink -p stm8s105c6 -w main.ihx)