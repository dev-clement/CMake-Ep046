include(FetchContent)

FetchContent_Declare(
    nlohmann_json
    GIT_REPOSITORY  https://github.com/nlohmann/json.git
    GIT_TAG         v3.12.0
    GIT_SHALLOW     TRUE # FetchContent will clone the repository and their submodules if there are.
)

FetchContent_MakeAvailable(nlohmann_json)
