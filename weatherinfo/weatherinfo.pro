#
# This Source Code Form is subject to the terms of the Mozilla Public License,
# v. 2.0. If a copy of the MPL was not distributed with this file, You can
# obtain one at http://mozilla.org/MPL/2.0/.
#
# Copyright (c) 2015 Oscar Andreasson
#

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
