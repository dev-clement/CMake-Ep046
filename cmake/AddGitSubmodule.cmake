function(add_git_submodule dir)
    find_package(Git REQUIRED) # REQUIRED just says that the Git is required to continue to build the project

    if (NOT EXISTS ${dir}/CMakeLists.txt) # Enter inside if there are no CMakeLists.txt in the dir specified
        execute_process(
            COMMAND ${GIT_EXECUTABLE}
            submodule update --init --recursive -- ${dir}
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
        )
    endif()

    if (EXISTS ${dir}/CMakeLists.txt)
        add_subdirectory(${dir})
    endif()
endfunction(add_git_submodule)
