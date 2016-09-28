#-------------------------------------------------
#
# Project created by QtCreator 2012-07-30T13:51:47
#
#-------------------------------------------------

QT       += core gui widgets xml

TARGET = PixyMon
TEMPLATE = app
RC_FILE = resources.rc

SOURCES += main.cpp\
    mainwindow.cpp \
    videowidget.cpp \
    usblink.cpp \
    console.cpp \
    interpreter.cpp \
    renderer.cpp \
    chirpmon.cpp \
    dfu.cpp \
    connectevent.cpp \
    flash.cpp \
    reader.cpp \
    ./src/chirp.cpp \
    ./src/colorlut.cpp \
    ./src/blob.cpp \
    ./src/blobs.cpp \
    ./src/qqueue.cpp \
    ./src/calc.cpp \
    configdialog.cpp \
    aboutdialog.cpp \
    parameters.cpp \
    paramfile.cpp \
    dataexport.cpp \
    monmodule.cpp \
    cblobmodule.cpp \
    colorblob.cpp \
    monparameterdb.cpp \
    cccmodule.cpp \
    debug.cpp \
    blobs2.cpp

HEADERS  += mainwindow.h \
    videowidget.h \
    usblink.h \
    console.h \
    interpreter.h \
    renderer.h \
    chirpmon.h \
    dfu.h \
    usb_dfu.h \
    dfu_info.h \
    connectevent.h \
    flash.h \
    reader.h \
    ./inc/pixytypes.h \
    ./inc/pixydefs.h \
    ./inc/chirp.hpp \
    ./inc/colorlut.h \
    ./inc/blobs.h \
    ./inc/blob.h \
    ./inc/blobs.h \
    ./inc/qqueue.h \
    ./inc/link.h \
    ./inc/calc.h \
    ./inc/simplevector.h \
    pixymon.h \
    configdialog.h \
    sleeper.h \
    aboutdialog.h \
    parameters.h \
    paramfile.h \
    dataexport.h \
    monmodule.h \
    cblobmodule.h \
    colorblob.h \
    monparameterdb.h \
    cccmodule.h \
    debug.h \
    blobs2.h

INCLUDEPATH += ./inc

QMAKE_CXXFLAGS_DEBUG += -O0
QMAKE_CXXFLAGS += -Wno-unused-parameter
FORMS    += mainwindow.ui \
    configdialog.ui \
    about.ui

# LIBS += ./libusb-1.0.dll.a

win32 {
    DEFINES += __WINDOWS__
    QMAKE_CXXFLAGS += -mno-ms-bitfields
    LIBS += ../windows/libusb-1.0.dll.a
    HEADERS += ../windows/libusb.h
    INCLUDEPATH += ../windows
    QMAKE_CXXFLAGS += -mno-ms-bitfields
}

macx {
    ICON = pixy.icns
    DEFINES += __MACOS__
    #CONFIG += x86
    #CONFIG -= x86_64
    LIBS += -L/opt/local/lib -lusb-1.0
    INCLUDEPATH += /opt/local/include/libusb-1.0
    #QMAKE_MAC_SDK = /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk
    #QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.7
}

unix:!macx {
    DEFINES += __LINUX__
    PKGCONFIG += libusb-1.0
    LIBS += -lusb-1.0
    INCLUDEPATH += /usr/include/libusb-1.0
   
}

RESOURCES += \
    resources.qrc







