cmake_minimum_required(VERSION 3.2)
set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_C_COMPILER sdcc)
set(CMAKE_SYSTEM_NAME Generic) # No linux target etc

# Prevent default configuration
set(CMAKE_C_FLAGS_INIT "")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")
project(STM8Blink C)
SET(CMAKE_C_FLAGS "-mstm8 --std-c99 -DSTM8S003 -D__SDCC__ -DUSE_STDPERIPH_DRIVER")

# Flash targets
#add_custom_target(flash ALL COMMAND stm8flash -c stlink -p stm8s105c6 -w main.ihx)

set(CMAKE_STATIC_LIBRARY_PREFIX "")
set(CMAKE_STATIC_LIBRARY_SUFFIX ".lib")
set(CMAKE_SHARED_LIBRARY_PREFIX "")          # lib
set(CMAKE_SHARED_LIBRARY_SUFFIX ".lib")          # .so
set(CMAKE_IMPORT_LIBRARY_PREFIX )
set(CMAKE_IMPORT_LIBRARY_SUFFIX )
set(CMAKE_EXECUTABLE_SUFFIX ".ihx")          # intel hex file
set(CMAKE_LINK_LIBRARY_SUFFIX ".lib")
set(CMAKE_DL_LIBS "")

include_directories(${CMAKE_SOURCE_DIR}/Inc)
#link_directories(${CMAKE_SOURCE_DIR}/Src)

file(GLOB Dir2_Sources RELATIVE "Src" "*.c")
AUX_SOURCE_DIRECTORY(Src VARIABLE) 


#add_definitions(-DSTM8S003 -D__SDCC__)

# dummy
#include_directories(${CMAKE_SOURCE_DIR}/STM8S_StdPeriph_Lib/inc)

add_executable(main.ihx ${VARIABLE} Src/main.c)

#add_subdirectory(Src)

