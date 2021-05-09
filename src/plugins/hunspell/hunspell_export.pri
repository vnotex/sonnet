INCLUDEPATH *= $$PWD

DEPENDPATH *= $$PWD

SOURCES += \
           $$PWD/hunspelldict.cpp \
           $$PWD/hunspellclient.cpp \
           $$PWD/hunspelldebug.cpp

HEADERS += \
           $$PWD/hunspellclient.h \
           $$PWD/hunspelldebug.h \
           $$PWD/hunspelldict.h \
           $$PWD/config-hunspell.h

LIBS_FOLDER = $$PWD/../../../../../libs
include($$LIBS_FOLDER/hunspell/hunspell_export.pri)

DEFINES += SONNETUI_EXPORT=""
DEFINES += SONNETCORE_EXPORT=""
DEFINES += INSTALLATION_PLUGIN_PATH=""
DEFINES += SONNET_STATIC
