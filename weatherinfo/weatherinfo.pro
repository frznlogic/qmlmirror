TEMPLATE = lib
TARGET = WeatherData

CONFIG += qt plugin
QT += core network positioning declarative qml quick

uri=net.frozentux.weatherinfo

SOURCES += appmodel.cpp \
    weatherplugin.cpp

HEADERS += appmodel.h \
    weatherplugin.h

qmldirfile.path = $$[QT_INSTALL_QML]/net/frozentux/weatherinfo
qmldirfile.files = qmldir
INSTALLS += qmldirfile

RESOURCES += \
    images.qrc
