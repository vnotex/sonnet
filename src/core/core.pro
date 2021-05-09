TARGET = sonnet-core
TEMPLATE = lib
CONFIG += staticlib c++11
QT -= gui

DEFINES += SONNETCORE_STATIC_DEFINE

SOURCES += \
    $$PWD/backgroundchecker.cpp \
    $$PWD/client.cpp \
    $$PWD/core_debug.cpp \
    $$PWD/guesslanguage.cpp \
    $$PWD/languagefilter.cpp \
    $$PWD/loader.cpp \
    $$PWD/settings.cpp \
    $$PWD/settingsimpl.cpp \
    $$PWD/speller.cpp \
    $$PWD/spellerplugin.cpp \
    $$PWD/textbreaks.cpp \
    $$PWD/tokenizer.cpp

HEADERS += \
    $$PWD/backgroundchecker.h \
    $$PWD/backgroundchecker_p.h \
    $$PWD/client_p.h \
    $$PWD/core_debug.h \
    $$PWD/guesslanguage.h \
    $$PWD/languagefilter_p.h \
    $$PWD/loader_p.h \
    $$PWD/settings.h \
    $$PWD/settingsimpl_p.h \
    $$PWD/sonnetcore_export.h \
    $$PWD/speller.h \
    $$PWD/spellerplugin_p.h \
    $$PWD/textbreaks_p.h \
    $$PWD/tokenizer_p.h

include($$PWD/../plugins/hunspell/hunspell_export.pri)

DEFINES += SONNETCORE_EXPORT=""
DEFINES += INSTALLATION_PLUGIN_PATH=""
DEFINES += SONNET_STATIC
