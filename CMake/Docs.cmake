find_package(Doxygen)
if(DOXYGEN_FOUND)
    configure_file(
        ${CMAKE_CURRENT_SUORCE_DIR}/docs/DoxyFile
        ${CMAKE_CURRENT_BINARY_DIR}/DoxyFile @ONLY
    )
    add_custom_target(docs
    ${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/DoxyFile @ONLY
    WORKING_DIRECTORY ${CMAKE_CURRENT_SUORCE_DIR}/docs
    )
endif()