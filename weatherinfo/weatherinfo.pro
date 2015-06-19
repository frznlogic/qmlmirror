TEMPLATE = lib
TARGET = WeatherData

CONFIG += qt plugin
QT += core network positioning declarative qml quick

SOURCES += appmodel.cpp \
    weatherplugin.cpp

HEADERS += appmodel.h \
    weatherplugin.h

target.path = $$[QT_INSTALL_QML]/net/frozentux/weatherinfo
INSTALLS += target
uri=net.frozentux.weatherinfo


DISTFILES += \
    WeatherInfo.qml

RESOURCES += \
    images.qrc
