cmake_minimum_required(VERSION 3.10)
project(UnitTests C)  # Set project language to C

# Set C standard
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Generates compile_commands.json for IDE integration
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Find and configure pthreads
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

# Find CMocka
find_package(CMocka REQUIRED)
if(NOT CMocka_FOUND)
    message(FATAL_ERROR "CMocka not found! Install using 'sudo apt-get install libcmocka-dev'")
endif()

# Enable testing
enable_testing()


# Function to apply sanitizers
# -fsanitize=address,undefined -fno-omit-frame-pointer
# Removed because we use headers from target which have adresses to memory that on hardware map to real peripherals
# but we use this on PC machine those acreses are wrong and will misslead sanitizer
#function(add_sanitizers target)
#    if(CMAKE_BUILD_TYPE STREQUAL "Debug")
#        target_compile_options(${target} PRIVATE -fsanitize=address,undefined -fno-omit-frame-pointer)
#        target_link_options(${target} PRIVATE -fsanitize=address,undefined)
#    endif()
#endfunction()

# Function to apply coverage flags
function(apply_coverage_flags target)
    if(CMAKE_BUILD_TYPE STREQUAL "Debug")
        target_compile_options(${target} PRIVATE --coverage -O0 -g)
        target_link_options(${target} PRIVATE --coverage)
    endif()
endfunction()

# Function to create test executables
function(create_test_exec TARGET_NAME)
    add_executable(${TARGET_NAME} ${ARGN})
    
    # Link against CMocka and threads
    target_link_libraries(${TARGET_NAME} PRIVATE
        Threads::Threads
        #CMocka::CMocka
        cmocka
    )
    
    # Include directories
    target_include_directories(${TARGET_NAME} PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/../Application
        ${CMAKE_CURRENT_SOURCE_DIR}/../Device
        ${CMAKE_CURRENT_SOURCE_DIR}/../Driver
                
        ${CMAKE_CURRENT_SOURCE_DIR}/../STM8S_StdPeriph_Lib/inc/
        ${CMAKE_CURRENT_SOURCE_DIR}/Mock
        ${CMAKE_CURRENT_SOURCE_DIR}/..
    )

    apply_coverage_flags(${TARGET_NAME})
   # add_sanitizers(${TARGET_NAME})
    add_test(NAME ${TARGET_NAME} COMMAND ${TARGET_NAME})
    
    target_compile_definitions(${TARGET_NAME} PRIVATE
        STM8S003
        __SDCC__
        USE_STDPERIPH_DRIVER
        UNIT_TEST_ROBERT
    )

    # Add to global test targets list
    set(TEST_TARGETS ${TEST_TARGETS} ${TARGET_NAME} PARENT_SCOPE)
endfunction()

# =============================================================================
# TEST CONFIGURATIONS
# =============================================================================

# Initialize test targets list
set(TEST_TARGETS "")

### Application tests
set(APPLICATION_BUILDER_TEST_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Application/application_builder.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_application_builder.c
)

set(MEASUREMENT_FRAME_TEST_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Application/measurement_frame.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_measurement_frame.c
)

set(MEASUREMENT_COLLECTOR_TEST_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Application/measurement_collector.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_measurement_collector.c
)

## Driver tests
set(USER_INTERFACE_TEST_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/user_interface.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_user_interface.c
)

set(MCP3425_TEST_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/mcp3425.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_mcp3425.c
)

set(TIMER_CONFIGURATOR_TEST_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/timer_configurator.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_timer_configurator.c
)

set(LOGGER_TEST_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/logger.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_logger.c
)

set(CLOCK_CONFIGURATOR_TEST_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/clock_configurator.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_clock_configurator.c
)

set(INTERRUPT_CONFIGURATOR_TEST_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/test_interrupt_configurator.c
)
 
create_test_exec(test_user_interface "${USER_INTERFACE_TEST_SRC}")
create_test_exec(test_mcp3425 "${MCP3425_TEST_SRC}")
create_test_exec(test_timer_configurator "${TIMER_CONFIGURATOR_TEST_SRC}")
create_test_exec(test_measurement_frame "${MEASUREMENT_FRAME_TEST_SRC}")
create_test_exec(test_measurement_collector "${MEASUREMENT_COLLECTOR_TEST_SRC}")
create_test_exec(test_logger "${LOGGER_TEST_SRC}")
create_test_exec(test_clock_configurator "${CLOCK_CONFIGURATOR_TEST_SRC}")
create_test_exec(test_application_builder "${APPLICATION_BUILDER_TEST_SRC}")
create_test_exec(test_interrupt_configurator "${INTERRUPT_CONFIGURATOR_TEST_SRC}")

# Custom target to run all tests
add_custom_target(run_all_tests
    COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure
    DEPENDS ${TEST_TARGETS}
    COMMENT "Running all unit tests..."
)

# =============================================================================
# STATIC ANALYSIS WITH CODECHECKER
# =============================================================================
find_program(CODECHECKER_PATH CodeChecker)
if(CODECHECKER_PATH)
    add_custom_target(static
        COMMAND ${CODECHECKER_PATH} analyze ${CMAKE_BINARY_DIR}/compile_commands.json --enable-all --output ${CMAKE_BINARY_DIR}/codechecker_reports
        COMMAND ${CODECHECKER_PATH} parse ${CMAKE_BINARY_DIR}/codechecker_reports --export html --output ${CMAKE_BINARY_DIR}/codechecker_html
        COMMENT "Running CodeChecker static analysis and exporting HTML report..."
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        DEPENDS run_all_tests
    )
else()
    message(WARNING "CodeChecker not found! Install with 'pip install --user CodeChecker'")
endif()

# =============================================================================
# CODE COVERAGE CONFIGURATION
# =============================================================================
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    # Find required tools
    find_program(LCOV_PATH lcov)
    find_program(GENHTML_PATH genhtml)
    find_program(GCOV_PATH gcov)
    
    if(LCOV_PATH AND GENHTML_PATH AND GCOV_PATH)
        # Coverage directories
        set(COVERAGE_DIR ${CMAKE_BINARY_DIR}/coverage)
        set(COVERAGE_HTML_DIR ${COVERAGE_DIR}/html)
        set(COVERAGE_INFO_FILE ${COVERAGE_DIR}/coverage.info)
        set(COVERAGE_FILTERED_INFO ${COVERAGE_DIR}/filtered_coverage.info)
        
        # Create coverage directories
        file(MAKE_DIRECTORY ${COVERAGE_DIR})
        file(MAKE_DIRECTORY ${COVERAGE_HTML_DIR})
        
        # Add custom coverage target
        add_custom_target(coverage
            # Clean previous coverage data
            COMMAND ${LCOV_PATH} --directory . --zerocounters
            
            # Run tests
            COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure
            
            # Capture coverage data
            COMMAND ${LCOV_PATH} --directory . --capture --output-file ${COVERAGE_INFO_FILE}
            
            # Filter coverage data
            COMMAND ${LCOV_PATH} --remove ${COVERAGE_INFO_FILE}
                '*/test/*' '*/Mock/*' '*/fff/*' '*/cmocka/*' '/usr/*' 
                '*/STM8S_StdPeriph_Lib/*'
                --output-file ${COVERAGE_FILTERED_INFO}
            
            # Generate HTML report
            COMMAND ${GENHTML_PATH} ${COVERAGE_FILTERED_INFO} 
                --output-directory ${COVERAGE_HTML_DIR}
                --branch-coverage
                --function-coverage
                --legend
                --sort
                --title "${PROJECT_NAME} Code Coverage"
                --num-spaces 4
                --ignore-errors source
            
            # Final status message
            COMMAND ;
            COMMENT "Generating code coverage report..."
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            DEPENDS run_all_tests
        )
        
        # Add description to coverage target
        set_target_properties(coverage PROPERTIES
            COVERAGE_REPORT_DIRECTORY ${COVERAGE_HTML_DIR}
        )
        
        # Message to display after generation
        add_custom_command(TARGET coverage POST_BUILD
            COMMAND ;
            COMMENT "Coverage report generated at: ${COVERAGE_HTML_DIR}/index.html"
        )
    else()
        message(WARNING "Code coverage tools not found. Coverage target will not be available.")
    endif()
endif()