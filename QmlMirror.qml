/*
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2015 Oscar Andreasson
 */

import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0

Rectangle {
    id: root
    color: "black"
    width: 1080
    height: 1980

    Position {
        id: positionId
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 100
    }


    Rectangle {
        anchors.top: positionId.bottom
        width: root.width
        height: root.width-positionId.width
        Row {
            Column {
                Clock {
                }
                TaskWarrior {
                }
            }

            Column {
                MirrorWindow {}
            }

            Column {
                Weather {
                }

                Transport {
                    id: transportId
                }
            }
        }
    }
}
