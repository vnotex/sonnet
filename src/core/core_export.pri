INCLUDEPATH *= $$PWD

DEPENDPATH *= $$PWD

OUT_FOLDER = $$absolute_path($$relative_path($$PWD, $$_PRO_FILE_PWD_), $$OUT_PWD)
win32:CONFIG(release, debug|release) {
    LIBS += $$OUT_FOLDER/release/sonnet-core.lib
    # For static library, we need to add this depends to let Qt re-build the target
    # when there is a change in the library.
    PRE_TARGETDEPS += $$OUT_FOLDER/release/sonnet-core.lib
} else:win32:CONFIG(debug, debug|release) {
    LIBS += $$OUT_FOLDER/debug/sonnet-core.lib
    PRE_TARGETDEPS += $$OUT_FOLDER/debug/sonnet-core.lib
} else:unix {
    LIBS += $$OUT_FOLDER/libsonnet-core.a
    PRE_TARGETDEPS += $$OUT_FOLDER/libsonnet-core.a
}

DEFINES += SONNETCORE_EXPORT=""
DEFINES += INSTALLATION_PLUGIN_PATH=""
DEFINES += SONNETCORE_STATIC_DEFINE
DEFINES += SONNET_STATIC

RESOURCES += $$PWD/trigrams.qrc

