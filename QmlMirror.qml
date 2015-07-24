/*
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2015 Oscar Andreasson
 */

import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0

Rectangle {
    anchors.fill: parent
    color: "black"

    Position {
        id: positionId
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 100
    }

    Clock {
        id: clockId
        anchors.top: positionId.bottom
        anchors.left: parent.left
        width: 360
        height: 240
    }

    Calendar {
        anchors.top: clockId.bottom
        anchors.left: parent.left
        width: 360
        height: 480
    }

    Rectangle {
        id: weatherId
        width: 360
        height: 400
        anchors.top: positionId.bottom
        anchors.right: parent.right
        Weather {
            width: 360
            height: 400
        }
    }

    Transport {
        id: transportId
        anchors.top: weatherId.bottom
        anchors.right: parent.right
        width: 360
        height: 400
    }

}
