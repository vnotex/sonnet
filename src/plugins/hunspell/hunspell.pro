TARGET = sonnet-hunspell
TEMPLATE = lib
CONFIG += staticlib
QT -= gui

SOURCES += hunspelldict.cpp \
           hunspellclient.cpp \
           hunspelldebug.cpp
HEADERS += hunspellclient.h \
           hunspelldebug.h \
           hunspelldict.h \
           config-hunspell.h

DEFINES += SONNETUI_EXPORT=""
DEFINES += SONNETCORE_EXPORT=""
DEFINES += INSTALLATION_PLUGIN_PATH=""
DEFINES += SONNET_STATIC

INCLUDEPATH += $$PWD/../../core

LIBS_FOLDER = $$PWD/../../../../../libs

include($$LIBS_FOLDER/hunspell/hunspell_export.pri)

