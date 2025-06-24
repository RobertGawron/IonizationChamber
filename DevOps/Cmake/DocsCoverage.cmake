# Find the required executables
find_program(DOXYGEN_EXECUTABLE doxygen)
find_program(PYTHON_EXECUTABLE python3) 
# Python3 for invoking Coverxygen, 
# use handmade venv to not polute docker with python packages
set(PYTHON_EXECUTABLE "/workspace/venv/bin/python3")
find_program(GENHTML_EXECUTABLE genhtml)

if(DOXYGEN_EXECUTABLE)
    set(DOXYGEN_DIRS
        "${CMAKE_SOURCE_DIR}/Software/Firmware/Application/"
        "${CMAKE_SOURCE_DIR}/Software/Firmware/Device/"
        "${CMAKE_SOURCE_DIR}/Software/Firmware/Driver/"
        "${CMAKE_SOURCE_DIR}/Software/Firmware/UnitTest/"
    )
    string(REPLACE ";" " " DOXYGEN_DIRS_STR "${DOXYGEN_DIRS}")  
    set(DOXYGEN_INPUT_DIR ${DOXYGEN_DIRS_STR})

    set(DOXYGEN_OUTPUT_DIR "${CMAKE_SOURCE_DIR}/DevOps/BuildArtifacts/DocsCoverage/")

    # Ensure the output directory exists
    file(MAKE_DIRECTORY "${DOXYGEN_OUTPUT_DIR}")

    # Set the paths for the Doxyfile template and the final generated Doxyfile
    set(DOXYFILE_IN "${CMAKE_SOURCE_DIR}/DevOps/Scripts/Doxyfile.in")
    set(DOXYFILE_OUT "${CMAKE_SOURCE_DIR}/DevOps/Scripts/Doxyfile")

    # Create a template Doxyfile with CMake variables
    configure_file(${DOXYFILE_IN} ${DOXYFILE_OUT} @ONLY)

    # Create a custom target to run Doxygen for generating XML output (needed for Coverxygen)
    add_custom_target(docs
        COMMAND ${DOXYGEN_EXECUTABLE} "${DOXYFILE_OUT}"
        WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
        COMMENT "Running Doxygen to detect missing comments and generate XML..."
        VERBATIM
    )

    # Run Coverxygen via Python3 (if Python is available)
    if(PYTHON_EXECUTABLE)
        add_custom_command(TARGET docs
            POST_BUILD
            COMMAND ${PYTHON_EXECUTABLE} -m coverxygen --format lcov 
                --kind enum,enumvalue,friend,typedef,variable,function,class,struct,union,define 
                --xml-dir "${DOXYGEN_OUTPUT_DIR}/xml" 
                --src-dir "${DOXYGEN_INPUT_DIR}" 
                --output "${DOXYGEN_OUTPUT_DIR}/doc-coverage.info"
            COMMAND ${GENHTML_EXECUTABLE} --no-function-coverage 
                --no-branch-coverage "${DOXYGEN_OUTPUT_DIR}/doc-coverage.info" 
                -o "${DOXYGEN_OUTPUT_DIR}"
            WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
            COMMENT "Generating Coverxygen documentation coverage report..."
            VERBATIM
        )
    else()
        message(WARNING "Python3 not found. Skipping Coverxygen coverage report generation.")
    endif()

else()
    message(WARNING "Doxygen not found. Skipping missing documentation check.")
endif()
