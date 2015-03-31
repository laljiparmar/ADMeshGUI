#-------------------------------------------------
#
# Project created by QtCreator 2014-10-31T11:28:53
#
#-------------------------------------------------

QT       += core gui opengl widgets

lessThan(QT_MAJOR_VERSION, 5) {
   error(ADMeshGUI requires Qt 5.4 to run. Older version detected.)
}

equals(QT_MAJOR_VERSION, 5):lessThan(QT_MINOR_VERSION, 4) {
   error(ADMeshGUI requires Qt 5.4 to run. Older version detected.)
}

TARGET = ADMeshGUI
TEMPLATE = app

load(uic)
uic.commands += -tr _

SOURCES += main.cpp\
        window.cpp \    
    renderingwidget.cpp \
    admeshcontroller.cpp \
    meshobject.cpp \
    historylist.cpp

HEADERS  += window.h \
    data.h \
    renderingwidget.h \
    admeshcontroller.h \
    meshobject.h \
    historylist.h

FORMS    += window.ui

LIBS += -ladmesh -L -lglut

DISTFILES += \
    fshader.glsl \
    vshader.glsl

RESOURCES += \
    shaders.qrc \
    Resources.qrc

OTHER_FILES += \
    picking_vshader.glsl \
    picking_fshader.glsl




