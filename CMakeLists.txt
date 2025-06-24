cmake_minimum_required(VERSION 3.15)
project(IoninizationChamberCodeQuality)

add_subdirectory(Software/Firmware/UnitTest/)


# Include the DevOps scripts (static code analysis, etc.)
include(DevOps/Cmake/DocsCoverage.cmake)
include(DevOps/Cmake/PythonStaticAnalysis.cmake)
include(DevOps/Cmake/CodeBeautifier.cmake)


