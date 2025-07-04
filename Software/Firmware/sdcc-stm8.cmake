# Generic STM8 / SDCC toolchain --------------------------------------------
set(CMAKE_SYSTEM_NAME Generic)

# Compiler
set(CMAKE_C_COMPILER sdcc)

# Archiver *must* be SDCC’s sdar, not GNU ar
set(CMAKE_AR      sdar)
set(CMAKE_RANLIB  sdar)   # sdar -s adds the symbol table

# SDCC uses .rel for objects and .lib for libraries
set(CMAKE_C_OUTPUT_EXTENSION ".rel")
set(CMAKE_STATIC_LIBRARY_PREFIX "")
set(CMAKE_STATIC_LIBRARY_SUFFIX ".lib")

# Project-specific flags should be added with target_compile_options()/target_link_options()
