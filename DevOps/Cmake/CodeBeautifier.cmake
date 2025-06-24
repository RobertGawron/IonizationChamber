find_program(UNCRUSTIFY uncrustify)

# Get all files
file(GLOB MODIFY_FILES 
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Application/*.h"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Application/*.c"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Device/*.h"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Device/*.c"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Driver/*.h"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Driver/*.c"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/UnitTest/*.h"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/UnitTest/*.c"
)

# Files to exclude
set(EXCLUDE_FILES
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Driver/interrupt_handler.h"
    "${CMAKE_SOURCE_DIR}/Software/Firmware/Driver/interrupt_handler.c"
)

# Remove excluded files
list(REMOVE_ITEM MODIFY_FILES ${EXCLUDE_FILES})

add_custom_target(style
    COMMAND ${UNCRUSTIFY} -c "${CMAKE_SOURCE_DIR}/DevOps/Scripts/uncrustify.cfg" --replace --no-backup ${MODIFY_FILES}
    WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
    COMMENT "Running uncrustify on source directories"
    VERBATIM
)