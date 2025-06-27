cmake_minimum_required(VERSION 3.18)
project(PythonTests NONE)

# Locate Python interpreter
find_package(Python3 REQUIRED COMPONENTS Interpreter)

# Directories for reports
set(PYCHECKER_REPORT_DIR ${CMAKE_SOURCE_DIR}/DevOps/BuildArtifacts/PyCodeCoverage)
set(PYCHECKER_COVERAGE_DIR ${CMAKE_SOURCE_DIR}/DevOps/BuildArtifacts/PyCodeCoverage)

# ------------------------------------------------------------------------------
#  Target: pycoverage
#  Runs the Python test suite under coverage, produces:
#    • ${CMAKE_SOURCE_DIR}/test-results.html   (pytest-html)
#    • ${CMAKE_SOURCE_DIR}/index.html        (coverage HTML)
# ------------------------------------------------------------------------------
add_custom_target(pycoverage
    # Ensure the report directory exists
    COMMAND ${CMAKE_COMMAND} -E make_directory ${PYCHECKER_REPORT_DIR}

    # Run tests with coverage and generate the standalone pytest HTML report
    COMMAND ${Python3_EXECUTABLE} -m coverage run -m pytest -v
            --html=${PYCHECKER_REPORT_DIR}/test-results.html
            --self-contained-html

    # Convert the .coverage data file into an interactive HTML coverage site
    COMMAND ${Python3_EXECUTABLE} -m coverage html -d ${PYCHECKER_COVERAGE_DIR}

    # Run from the project root so relative imports resolve correctly
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}

    # Show output live in the terminal for easier debugging
    USES_TERMINAL

    COMMENT "Running Python tests with coverage; HTML reports land in ${PYCHECKER_REPORT_DIR}"
)
