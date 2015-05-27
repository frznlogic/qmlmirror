TEMPLATE = lib
TARGET = WeatherData

CONFIG += qt plugin
QT += core network positioning declarative qml quick

SOURCES += appmodel.cpp \
    weatherplugin.cpp

HEADERS += appmodel.h \
    weatherplugin.h

target.path = $$[QT_INSTALL_QML]/positioning/weatherinfo
INSTALLS += target
uri=weatherdata

OTHER_FILES += \
    components/BigForecastIcon.qml \
    components/ForecastIcon.qml \
    components/WeatherIcon.qml \
    icons/weather-few-clouds.png \
    icons/weather-fog.png \
    icons/weather-haze.png \
    icons/weather-icy.png \
    icons/weather-overcast.png \
    icons/weather-showers.png \
    icons/weather-sleet.png \
    icons/weather-snow.png \
    icons/weather-storm.png \
    icons/weather-sunny.png \
    icons/weather-sunny-very-few-clouds.png \
    icons/weather-thundershower.png \
    icons/README.txt

DISTFILES += \
    WeatherInfo.qml
