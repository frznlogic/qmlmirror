#
# This Source Code Form is subject to the terms of the Mozilla Public License,
# v. 2.0. If a copy of the MPL was not distributed with this file, You can
# obtain one at http://mozilla.org/MPL/2.0/.
#
# Copyright (c) 2015 Oscar Andreasson
#

TEMPLATE = app

SUBDIRS = weatherinfo

OTHER_FILES = \
    LICENSE

DISTFILES += \
    TaskWarrior.qml \
    QmlMirror.qml \
    Clock.qml \
    Weather.qml \
    Transport.qml \
    Position.qml \
    Main.qml \
    Calendar.qml \
    lala.qml \
    MirrorText.qml \
    MirrorWindow.qml \
    JSONListModel.qml \
    jsonpath.js
