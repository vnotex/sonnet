cmake_minimum_required(VERSION 3.16)
project(sonnet-data VERSION 1.0 LANGUAGES C CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(QT_VERSION_MAJOR 6 CACHE STRING "Qt version to use (5 or 6), defaults to 6")
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} OPTIONAL_COMPONENTS Core5Compat)

qt_standard_project_setup()

qt_add_executable(gentrigrams
    gentrigrams/gentrigrams.cpp
)
target_compile_definitions(gentrigrams PRIVATE
    SONNETCORE_STATIC_DEFINE
)

target_include_directories(gentrigrams PRIVATE ../src/core)
target_link_directories(gentrigrams PRIVATE ../src/core)

target_link_libraries(gentrigrams PRIVATE
    Qt::Core
    sonnet-core
)

qt_add_executable(parsetrigrams
    parsetrigrams/parsetrigrams.cpp
)

target_link_libraries(parsetrigrams PRIVATE
    Qt::Core
)

if((QT_VERSION_MAJOR GREATER 5))
    target_link_libraries(gentrigrams PRIVATE
        Qt::Core5Compat
    )
    target_link_libraries(parsetrigrams PRIVATE
        Qt::Core5Compat
    )
endif()
