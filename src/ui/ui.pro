TARGET = sonnet-ui
TEMPLATE = lib
CONFIG += staticlib
QT += widgets

DEFINES += SONNETUI_STATIC_DEFINE

SOURCES += \
    $$PWD/highlighter.cpp \
    $$PWD/configdialog.cpp \
    $$PWD/configview.cpp \
    $$PWD/configwidget.cpp \
    $$PWD/dialog.cpp \
    $$PWD/dictionarycombobox.cpp \
    $$PWD/spellcheckdecorator.cpp \
    $$PWD/ui_debug.cpp

HEADERS += \
    $$PWD/highlighter.h \
    $$PWD/configdialog.h \
    $$PWD/configview.h \
    $$PWD/configwidget.h \
    $$PWD/dialog.h \
    $$PWD/dictionarycombobox.h \
    $$PWD/spellcheckdecorator.h \
    $$PWD/ui_debug.h

FORMS += \
    $$PWD/configui.ui \
    $$PWD/sonnetui.ui

DEFINES += SONNETUI_EXPORT=""
DEFINES += SONNETCORE_EXPORT=""
DEFINES += INSTALLATION_PLUGIN_PATH=""
DEFINES += SONNET_STATIC

INCLUDEPATH *= $$PWD/../core
