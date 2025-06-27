cmake_minimum_required(VERSION 3.31)

# Get the number of available processors
include(ProcessorCount)
ProcessorCount(NPROC)
if(NOT NPROC OR NPROC EQUAL 0)
    set(NPROC 1) # Fallback to 1 if ProcessorCount fails
endif()

# Define the source directories to analyze
set(CODECHECKER_SOURCE_DIRS
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Application"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Device"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Driver"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/UnitTest")

# Define the output directories for CodeChecker analysis and reports
set(CODECHECKER_ANALYZE_DIR /tmp/StaticAnalysisIntermediary)
set(CODECHECKER_REPORT_DIR ${CMAKE_SOURCE_DIR}/DevOps/BuildArtifacts/CStaticAnalysis)
set(CODECHECKER_SKIP_FILE ${CMAKE_SOURCE_DIR}/DevOps/Scripts/CodeCheckerSkipList)

# Ensure the output directories exist
file(MAKE_DIRECTORY ${CODECHECKER_ANALYZE_DIR})
file(MAKE_DIRECTORY ${CODECHECKER_REPORT_DIR})

# Add a custom target for CodeChecker analysis
add_custom_target(cstatic

    COMMAND CodeChecker analyze compile_commands.json
        --output ${CODECHECKER_ANALYZE_DIR}
        --file ${CODECHECKER_SOURCE_DIRS}
        --skip ${CODECHECKER_SKIP_FILE}
        --jobs ${NPROC}
        --enable-all
        #--disable checker:clang-diagnostic-c++98-compat
        #--disable modernize-use-trailing-return-type
        #--disable readability-identifier-length
        #--disable readability-uppercase-literal-suffix
        #--disable modernize-avoid-c-arrays
        #--disable modernize-use-auto
        --disable altera-unroll-loops
        #--disable cppcheck-missingIncludeSystem
        #--disable cppcheck-toomanyconfigs
        #--disable checker:clang-diagnostic-padded
        --disable altera-struct-pack-align
        #--disable clang-diagnostic-weak-vtables
        #--disable altera-id-dependent-backward-branch
        --disable bugprone-easily-swappable-parameters
        #--disable clang-diagnostic-covered-switch-default
        # project specific
        --disable modernize-macro-to-enum
        --disable clang-diagnostic-declaration-after-statement
        --disable optin.core.EnumCastOutOfRange # https://github.com/llvm/llvm-project/issues/76208
        --disable checker:clang-diagnostic-unsafe-buffer-usage # https://stackoverflow.com/questions/77017567/how-to-fix-code-to-avoid-warning-wunsafe-buffer-usage
        --disable security.insecureAPI.DeprecatedOrUnsafeBufferHandling # we dont use string-related functions due to STM8 binary size limitation 
    COMMENT "Running CodeChecker analysis..."

    COMMAND CodeChecker parse ${CODECHECKER_ANALYZE_DIR}
        --skip ${CODECHECKER_SKIP_FILE}
        --export html
        --output ${CODECHECKER_REPORT_DIR}
    COMMENT "Generating CodeChecker HTML report..."

    VERBATIM
)

# Add a custom command to generate the HTML report
add_custom_command(TARGET cstatic POST_BUILD
    COMMAND CodeChecker parse ${CODECHECKER_ANALYZE_DIR}
        --skip ${CODECHECKER_SKIP_FILE}
        --export html
        --output ${CODECHECKER_REPORT_DIR}
    COMMENT "Generating CodeChecker HTML report..."
    VERBATIM
)

# Add a custom command to check for errors and fail the build if any are found
add_custom_command(TARGET cstatic POST_BUILD
    COMMAND bash -c "if [ -n \"\$(CodeChecker parse ${CODECHECKER_ANALYZE_DIR} | grep -i 'error')\" ]; then echo 'CodeChecker found errors!'; exit 1; fi"
    COMMENT "Failing the build if CodeChecker finds errors..."
    VERBATIM
)

# Message if CodeChecker is not found (optional)
find_program(CODECHECKER_EXECUTABLE CodeChecker)
if(NOT CODECHECKER_EXECUTABLE)
    message(WARNING "CodeChecker not found. Skipping static analysis.")
endif()
