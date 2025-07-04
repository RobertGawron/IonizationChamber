cmake_minimum_required(VERSION 3.31)
project(UnitTests C)

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
        DO_NOT_USE_STM8_ASM_MNEMONICS
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
set(TEST_APP_BUILDER_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Application/app_builder.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_app_builder.c
)

set(TEST_DATA_FRAME_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Application/data_frame.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_data_frame.c
)

set(TEST_DATA_ACQUISITION_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Application/data_acquisition.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_data_acquisition.c
)

## Driver tests
set(TEST_STATUS_LEDS_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/status_leds.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_status_leds.c
)

set(TEST_MCP3425_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/mcp3425.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_mcp3425.c
)

set(TEST_TIMER_CONF_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/timer_conf.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_timer_conf.c
)

set(TEST_UART_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/uart.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_uart.c
)

set(TEST_CLK_CONF_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/../Driver/clk_conf.c
    ${CMAKE_CURRENT_SOURCE_DIR}/test_clk_conf.c
)

set(TEST_INTERRUPT_CONTROL_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/test_interrupt_control.c
)

create_test_exec(test_status_leds "${TEST_STATUS_LEDS_SRC}")
create_test_exec(test_mcp3425 "${TEST_MCP3425_SRC}")
create_test_exec(test_timer_conf "${TEST_TIMER_CONF_SRC}")
create_test_exec(test_data_frame "${TEST_DATA_FRAME_SRC}")
#create_test_exec(test_data_acquisition "${TEST_DATA_ACQUISITION_SRC}")
create_test_exec(test_uart "${TEST_UART_SRC}")
create_test_exec(test_clk_conf "${TEST_CLK_CONF_SRC}")
#create_test_exec(test_app_builder "${TEST_APP_BUILDER_SRC}")
create_test_exec(test_interrupt_control "${TEST_INTERRUPT_CONTROL_SRC}")

# Custom target to run all tests
add_custom_target(run_all_tests
    COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure
    DEPENDS ${TEST_TARGETS}
    COMMENT "Running all unit tests..."
)

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
        set(COVERAGE_DIR /workspace/DevOps/BuildArtifacts/CCodeCoverage)
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
                #'*/test/*' '*/Mock/*' '*/fff/*' '*/cmocka/*' '/usr/*' 
                #'*/STM8S_StdPeriph_Lib/*'
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
            COMMENT "Generating code coverage report..."
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            DEPENDS run_all_tests
        )
        
        # Add description to coverage target
        set_target_properties(coverage PROPERTIES
            COVERAGE_REPORT_DIRECTORY ${COVERAGE_HTML_DIR}
        )
        
    else()
        message(WARNING "Code coverage tools not found. Coverage target will not be available.")
    endif()
endif()