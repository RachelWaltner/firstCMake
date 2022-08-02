add_library(${myLibrary} STATIC myLib.cc)

target_include_directories(${myLibrary} PUBLIC "./" "${CMAKE_BINARY_DIR}/configured_files/include/config.hpp")
