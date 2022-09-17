QT += core
QT -= gui

greaterThan(QT_MAJOR_VERSION, 6) {
    QT += core5compat
}

TARGET = gentrigrams
TEMPLATE = app

DEFINES += SONNETCORE_STATIC_DEFINE

SOURCES += gentrigrams.cpp

INCLUDEPATH *= $$PWD/../../src/core
