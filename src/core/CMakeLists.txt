cmake_minimum_required(VERSION 3.16)
project(sonnet-core VERSION 1.0 LANGUAGES C CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(QT_VERSION_MAJOR 6 CACHE STRING "Qt version to use (5 or 6), defaults to 6")
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} OPTIONAL_COMPONENTS Core5Compat)

qt_standard_project_setup()

qt_add_library(sonnet-core STATIC
    backgroundchecker.cpp backgroundchecker.h backgroundchecker_p.h
    client.cpp client_p.h
    core_debug.cpp core_debug.h
    guesslanguage.cpp guesslanguage.h
    languagefilter.cpp languagefilter_p.h
    loader.cpp loader_p.h
    settings.cpp settings.h
    settingsimpl.cpp settingsimpl_p.h
    sonnetcore_export.h
    speller.cpp speller.h
    spellerplugin.cpp spellerplugin_p.h
    textbreaks.cpp textbreaks_p.h
    tokenizer.cpp tokenizer_p.h
)
target_compile_definitions(sonnet-core PUBLIC
    INSTALLATION_PLUGIN_PATH=""
    SONNETCORE_STATIC_DEFINE
    SONNET_STATIC
)

target_link_libraries(sonnet-core PUBLIC
    Qt::Core
)

if((QT_VERSION_MAJOR GREATER 5))
    target_link_libraries(sonnet-core PUBLIC
        Qt::Core5Compat
    )
endif()

install(TARGETS sonnet-core
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    FRAMEWORK DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
