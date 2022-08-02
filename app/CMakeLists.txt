add_executable(${myExecutable} main.cc)

target_link_libraries(${myExecutable}  PUBLIC
    Library
    nlohmann_json
    fmt::fmt
    spdlog::spdlog_header_only
    ${CONAN_CXXOPTS}
    )
