cmake_minimum_required(VERSION 3.16)

project(UdemyCmake_Template-master VERSION 1.0.0 LANGUAGES C CXX)

set(myLibrary Library)
set(myExecutable Executable)
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/CMake/")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED on)
set(CMAKE_CXX_EXTENSIONS off)

include(addGitSubmoduls)
include(FetchContent)
include(Docs)

add_git_submoduls(external/json)
FetchContent_Declare(
    fmt
    GIT_REPOSITORY http://github.com/fmtlib/fmt.git
    GIT_TAG 8.1.1
)
FetchContent_MakeAvailable(fmt)

# include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)

FetchContent_Declare(
    spdlog
    GIT_REPOSITORY http://github.com/gabime/spdlog.git
    GIT_TAG v1.9.2
)
FetchContent_MakeAvailable(spdlog)

# conan_basic_setup()

add_subdirectory(configured)
add_subdirectory(src)
add_subdirectory(app)


