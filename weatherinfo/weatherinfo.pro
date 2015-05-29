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


OTHER_FILES += \
    components/BigForecastIcon.qml \
    components/ForecastIcon.qml \
    components/WeatherIcon.qml \
    icons/weather-few-clouds.xcf \
    icons/weather-fog.xcf \
    icons/weather-haze.xcf \
    icons/weather-icy.xcf \
    icons/weather-overcast.xcf \
    icons/weather-showers.xcf \
    icons/weather-sleet.xcf \
    icons/weather-snow.xcf \
    icons/weather-storm.xcf \
    icons/weather-sunny.xcf \
    icons/weather-sunny-very-few-clouds.xcf \
    icons/weather-thundershower.xcf \
    icons/README.txt

DISTFILES += \
    WeatherInfo.qml

RESOURCES += \
    images.qrc
