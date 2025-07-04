cmake_minimum_required(VERSION 3.31)
project(IoninizationChamberCodeQuality)

add_subdirectory(Software/Firmware/UnitTest/)

include(DevOps/Cmake/DocsCoverage.cmake)
include(DevOps/Cmake/PyStaticAnalysis.cmake)
include(DevOps/Cmake/PyCodeCoverage.cmake)
include(DevOps/Cmake/CStaticAnalysis.cmake)
include(DevOps/Cmake/RStaticAnalysis.cmake)
include(DevOps/Cmake/CodeBeautifier.cmake)
