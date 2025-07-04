cmake_minimum_required(VERSION 3.31)

# Define the output directories for Python static analysis and reports
set(PYTHON_ANALYZE_DIR ${CMAKE_SOURCE_DIR}/DevOps/BuildArtifacts/PyStaticAnalysis)
set(PYTHON_REPORT_DIR ${CMAKE_SOURCE_DIR}/DevOps/BuildArtifacts/PyStaticAnalysis)

# Echo the variables for debugging
message(STATUS "PYTHON_ANALYZE_DIR: ${PYTHON_ANALYZE_DIR}")
message(STATUS "PYTHON_REPORT_DIR: ${PYTHON_REPORT_DIR}")

# Ensure the output directories exist
file(MAKE_DIRECTORY ${PYTHON_ANALYZE_DIR})
file(MAKE_DIRECTORY ${PYTHON_REPORT_DIR})

# Define a variable for the file path
set(PYTHON_STATIC_ANALYSIS_SCRIPT "${CMAKE_SOURCE_DIR}/DevOps/Scripts/PyStaticAnalysis.sh")

# Add a custom target for Python static analysis
add_custom_target(pystatic
    COMMAND bash -c " \
        source ${PYTHON_STATIC_ANALYSIS_SCRIPT}"
    COMMENT "Running Python static analysis with Prospector and generating reports..."
    VERBATIM
)

