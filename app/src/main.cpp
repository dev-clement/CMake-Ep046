#include <iostream>

#include <nlohmann/json.hpp>

#include "my_lib.hpp"
#include "config.hpp"

int main() {
    std::cout   << project_name << std::endl
                << project_version_major << "." << project_version_minor << "." << project_version_patch << std::endl;

    std::cout   << "JSON Lib version:"
                << NLOHMANN_JSON_VERSION_MAJOR << "."
                << NLOHMANN_JSON_VERSION_MINOR << "."
                << NLOHMANN_JSON_VERSION_PATCH << "."
                << std::endl;
    print_hello_world();
    return EXIT_SUCCESS;
}
