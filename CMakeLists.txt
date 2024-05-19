cmake_minimum_required(VERSION 3.10)
project(factory)

set(CMAKE_CXX_STANDARD 14)


set(SOURCE_FILES
    factory.cpp
)

add_executable(factory ${SOURCE_FILES})

target_include_directories(factory PUBLIC ${PROJECT_SOURCE_DIR})
