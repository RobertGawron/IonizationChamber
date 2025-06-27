cmake_minimum_required(VERSION 3.31)

# R Static Analysis Configuration
set(R_ANALYZE_DIR ${CMAKE_SOURCE_DIR}/Software/MeasurementAnalysis)
set(R_REPORT_DIR ${CMAKE_SOURCE_DIR}/DevOps/BuildArtifacts/RStaticAnalysis)
set(LINTER_SCRIPT_PATH ${CMAKE_SOURCE_DIR}/DevOps/Scripts/lint_check.R)

find_program(RSCRIPT Rscript)
if(NOT RSCRIPT)
    message(WARNING "Rscript not found - R static analysis will be disabled")
endif()

add_custom_target(rstatic
    COMMAND ${RSCRIPT} ${LINTER_SCRIPT_PATH} ${R_ANALYZE_DIR} ${R_REPORT_DIR}
    COMMENT "Running R static analysis and generating reports..."
    VERBATIM
)