TEMPLATE = lib
TARGET = WeatherData

CONFIG += qt plugin
QT += core network positioning declarative qml quick

uri=net.frozentux.weatherinfo

SOURCES += appmodel.cpp \
    weatherplugin.cpp

HEADERS += appmodel.h \
    weatherplugin.h

target.path = $$[QT_INSTALL_QML]/net/frozentux/weatherinfo

qmldirfile.path = $$[QT_INSTALL_QML]/net/frozentux/weatherinfo
qmldirfile.files = qmldir
INSTALLS += qmldirfile target

RESOURCES += \
    images.qrc
