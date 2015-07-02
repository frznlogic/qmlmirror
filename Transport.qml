/*
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2015 Oscar Andreasson
 */

import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.2

Item {
    id: root

    ListModel {
        id: lineModel

        ListElement {
            number: 16
            destination: "Eketrägatan"
            arriving: "5"
            next: "10"
        }
        ListElement {
            number: 16
            destination: "Högsbohöjd"
            arriving: "5"
            next: "10"
        }
        ListElement {
            number: 60
            destination: "Kungssten"
            arriving: "5"
            next: "10"
        }
        ListElement {
            number: 60
            destination: "Eketrägatan"
            arriving: "5"
            next: "10"
        }
    }

    TableView {
        id: tableView
        anchors.fill: parent
        model: lineModel
        frameVisible: false

        Component.onCompleted: {
            console.log(root.width)
            console.log(tableView.width)
        }

        style: TableViewStyle {
            backgroundColor: "black"
            alternateBackgroundColor: "black"

            headerDelegate: Rectangle {
                height: textItem.implicitHeight
                width: textItem.implicitWidth
                color: "black"
                Text {
                    id: textItem
                    horizontalAlignment: Text.AlignLeft
                    text: styleData.value
                    font.bold: true
                    color: "white"
                }
            }

            itemDelegate: Rectangle {
                color: "black"

                Text {
                    id: itemText
                    anchors.verticalCenter: parent.verticalCenter
                    color: "white"
                    text: styleData.value
                }
            }

        }

        TableViewColumn {
            role: "number"
            title: "No"
            width: tableView.width / 6
        }
        TableViewColumn {
            role: "destination"
            title: "Destination"
            width: (tableView.width / 6) * 3
        }
        TableViewColumn {
            role: "arriving"
            title: "Arriving"
            width: tableView.width / 6
        }
        TableViewColumn {
            role: "next"
            title: "Next"
            width: (tableView.width / 6)
        }
    }
}
