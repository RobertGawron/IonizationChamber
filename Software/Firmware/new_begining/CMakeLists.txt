cmake_minimum_required(VERSION 3.16)

set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_SYSTEM_NAME Generic) # No linux target etc

# Prevent default configuration
set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")

project(STM8Blink C)
SET(CMAKE_C_FLAGS "-mstm8 --std-c99")
add_executable(main.ihx main.c)

# Flash targets
#add_custom_target(flash ALL COMMAND stm8flash -c stlink -p stm8s105c6 -w main.ihx)