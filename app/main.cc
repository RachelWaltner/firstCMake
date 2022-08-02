#include <iostream>
#include <stdio.h>

#include "myLib.h"
#include <spdlog/spdlog.h>
#include <fmt/format.h>
// #include <cxxopts.hpp>

int main()
{
    spdlog::info("Hey!! it's work!");

    // cxxopts::Options options(project_name.data());

    print_hello();
    return 0;
}
