#
# This Source Code Form is subject to the terms of the Mozilla Public License,
# v. 2.0. If a copy of the MPL was not distributed with this file, You can
# obtain one at http://mozilla.org/MPL/2.0/.
#
# Copyright (c) 2015 Oscar Andreasson
#

TEMPLATE = subdirs

SUBDIRS = weatherinfo


SOURCES = QmlMirror.qml \
    Clock.qml \
    Weather.qml \
    Transport.qml \
    Position.qml \
    Main.qml

OTHER_FILES = \
    LICENSE
