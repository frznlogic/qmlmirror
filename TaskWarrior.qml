/*
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2015 Oscar Andreasson
 */

import QtQuick 2.2

import net.frozentux.qmlcomponents 1.0

Rectangle {
    id: root
    color: "black"

    property string fileName: "jsondata.txt"

    JSONListModel {
        id: jsonModel
        source: fileName
    }

    TaskWarrior {
        id: taskwarrior
        jsonFile: fileName
    }

    Timer {
        repeat: true
        interval: 5*60*1000
        running: true
        triggeredOnStart: true

        onTriggered: {
            taskwarrior.sync()
        }
    }


    ListView {
        id: jsonView
        anchors.fill: parent

        model: jsonModel.model

        delegate: Text {
                text: model.description
                color: "white"
                Component.onCompleted: {
                    console.log("Text: " + text)
                }
        }
    }
}
