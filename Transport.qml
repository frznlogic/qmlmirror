import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.2

Rectangle {
    id: root
    color: "black"
    width: 360
    height: 400

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
        anchors.fill: parent
        model: lineModel

        style: TableViewStyle {
            backgroundColor: "black"
            alternateBackgroundColor: "black"

            headerDelegate: Rectangle {
                height: textItem.implicitHeight * 1.2
//                width: textItem.implicitWidth
                color: "black"
                Text {
                    id: textItem
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                    anchors.leftMargin: 0
                    text: styleData.value
                    elide: Text.ElideRight
                    color: "white"
                    renderType: Text.NativeRendering
                }
                Rectangle {
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    width:1
                    color: "black"
                }
            }

            itemDelegate: Rectangle {
                color: "black"
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    color: "white"
                    text: styleData.value
                }
            }

        }

        TableViewColumn {
            role: "number"
            title: "No"
            width: root.width / 6
        }
        TableViewColumn {
            role: "destination"
            title: "Destination"
            width: (root.width / 6) * 3
        }
        TableViewColumn {
            role: "arriving"
            title: "Arriving"
            width: root.width / 6
        }
        TableViewColumn {
            role: "next"
            title: "Next"
            width: (root.width / 6)-2
        }
    }
}
