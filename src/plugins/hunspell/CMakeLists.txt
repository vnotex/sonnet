cmake_minimum_required(VERSION 3.16)
project(sonnet-hunspell VERSION 1.0 LANGUAGES C CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(QT_VERSION_MAJOR 6 CACHE STRING "Qt version to use (5 or 6), defaults to 6")
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core)

qt_standard_project_setup()

qt_add_library(sonnet-hunspell STATIC
    config-hunspell.h
    hunspellclient.cpp hunspellclient.h
    hunspelldebug.cpp hunspelldebug.h
    hunspelldict.cpp hunspelldict.h
)
target_compile_definitions(sonnet-hunspell PUBLIC
    INSTALLATION_PLUGIN_PATH=""
    SONNET_STATIC
)

target_include_directories(sonnet-hunspell PUBLIC ../../core)
target_link_directories(sonnet-hunspell PUBLIC ../../core)

target_link_libraries(sonnet-hunspell PUBLIC
    Qt::Core
    sonnet-core
    Hunspell
)

install(TARGETS sonnet-hunspell
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
