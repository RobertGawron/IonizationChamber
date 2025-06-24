# Find the required executables
find_program(HPP2PLANTUML_EXECUTABLE hpp2plantuml)
find_program(PLANTUML_EXECUTABLE plantuml)

if(HPP2PLANTUML_EXECUTABLE AND PLANTUML_EXECUTABLE)
    # Set the source directory and output directory for the HPP2PlantUML analysis
    set(HPP2PLANTUML_INPUT_DIR "${CMAKE_SOURCE_DIR}/Software/STM32F103RBTx")
    set(HPP2PLANTUML_OUTPUT_DIR "${CMAKE_BINARY_DIR}/BuildArtifacts/ClassDiagram")

    # Ensure the output directory exists
    file(MAKE_DIRECTORY "${HPP2PLANTUML_OUTPUT_DIR}")

    # Custom target to generate the PlantUML diagram
    add_custom_target(uml
        COMMAND ${HPP2PLANTUML_EXECUTABLE}
            -d
            -i "${HPP2PLANTUML_INPUT_DIR}/Application/*/*/*.hpp"
            -i "${HPP2PLANTUML_INPUT_DIR}/Core/Inc/MyApplication.hpp"
            -i "${HPP2PLANTUML_INPUT_DIR}/Core/Inc/PlatformFactoryStm32.hpp"
            -t ${CMAKE_CURRENT_LIST_DIR}/ClassTemplate.puml
            --output ${HPP2PLANTUML_OUTPUT_DIR}/Application.puml
        COMMENT "Generating PlantUML class diagrams from all header files recursively..."
        WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
        VERBATIM
    )

    # Generate SVG from the .puml file
    add_custom_command(TARGET uml POST_BUILD
        COMMAND ${PLANTUML_EXECUTABLE}
            -tsvg -o ${HPP2PLANTUML_OUTPUT_DIR} ${HPP2PLANTUML_OUTPUT_DIR}/Application.puml
        COMMENT "Generating SVG diagram from Application.puml..."
        WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
        VERBATIM
    )


else()
    if(NOT HPP2PLANTUML_EXECUTABLE)
        message(FATAL_ERROR "hpp2plantuml not found. Please ensure it is installed and available in your PATH.")
    endif()

    if(NOT PLANTUML_EXECUTABLE)
        message(FATAL_ERROR "plantuml not found. Please ensure it is installed and available in your PATH.")
    endif()
endif()
