/*
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2015 Oscar Andreasson
 */

import QtQuick 2.2

import net.frozentux.qmlcomponents 1.0

MirrorWindow {
    id: root
    color: "black"

    property string fileName: "/home/oan/Projects/private/QmlMirror/QmlMirror/jsondata.txt"

    JSONListModel {
        id: jsonModel
        source: root.fileName
    }

    TaskWarrior {
        id: taskwarrior
        jsonFile: fileName

        onJsonFileChanged: {
            jsonModel.fetchJSONModel()
        }
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
                wrapMode: Text.Wrap
                Component.onCompleted: {
                }
        }
    }
}
