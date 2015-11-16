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

MirrorWindow {
    property date currDate: new Date()

    Timer {
        interval: 500; running: true; repeat: true
        onTriggered: {
            currDate = new Date()
            time.text = currDate.toTimeString()
            datum.text = currDate.toDateString()
        }
    }

    Text {
        id: time
        anchors.top: parent.top
        font.pointSize: 48
        font.family: "Helvetica"
        color: "#ffffff"
        //anchors.horizontalCenter: parent.horizontalCenter
        x: 5

    }
    Text {
        id: datum
        anchors.top: time.bottom
        //anchors.horizontalCenter: parent.horizontalCenter
        x: 5
        font.pointSize: 24
        color: "#ffffff"
        font.family: "Helvetica"
    }
}
