QT += core
QT -= gui

TARGET = gentrigrams
TEMPLATE = app

DEFINES += SONNETCORE_STATIC_DEFINE

SOURCES += gentrigrams.cpp

INCLUDEPATH *= $$PWD/../../src/core
