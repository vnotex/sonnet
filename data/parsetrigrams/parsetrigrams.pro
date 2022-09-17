QT += core
QT -= gui

greaterThan(QT_MAJOR_VERSION, 5) {
    QT += core5compat
}

TARGET = parsetrigrams
TEMPLATE = app

SOURCES += parsetrigrams.cpp
