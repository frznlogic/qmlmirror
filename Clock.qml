/*
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2015 Oscar Andreasson
 */

import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.1
import QtQuick.Window 2.0

Rectangle {
//    title: qsTr("Hello World")
    width: 480
    height: 200
    color: "#000000"
    property date currDate: new Date()

    Timer {
        interval: 500; running: true; repeat: true
        onTriggered: {
            currDate = new Date()
            time.text = currDate.toTimeString()
            datum.text = currDate.toDateString()
        }
    }

    ColumnLayout {
        id: layout
        anchors.fill: parent

        Text {
            id: time
//            anchors.top: parent.top
            font.pointSize: 48
            font.family: "Helvetica"
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter

        }
        Text {
            id: datum
//            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 24
            color: "#ffffff"
            font.family: "Helvetica"
        }
    }
}
