import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.2


Rectangle {
    id: root
    width: 360
//    height: 700
    color: "black"
    anchors.horizontalCenter: parent.horizontalCenter

    ListView {
        anchors.fill: parent
        model: calendarEntryModel
        delegate: categoryDelegate
    }

    ListModel {
        id: calendarEntryModel

        ListElement {
            owner: "Oscar"
            collapsed: true

            subItems: [
                ListElement { time: "09:00"; heading: "Dentist" },
                ListElement { time: "10:00"; heading: "Standup" },
                ListElement { time: "12:00"; heading: "Lunch" },
                ListElement { time: "16:00"; heading: "Phone conference" }
            ]
        }

        ListElement {
            owner: "Maria"
            collapsed: true

            subItems: [
                ListElement { time: "12:00"; heading: "Lunch" },
                ListElement { time: "16:00"; heading: "Pick up Kerstin" }
            ]
        }


    }

    //  TODO: Not fixed to show nested lists
    Component {
        id: categoryDelegate
        Column {
            width: root.width

            Rectangle {
                id: categoryItem
                color: "black"
                height: 50
                width: root.width

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    x: 15
                    font.pixelSize: 24
                    color: "white"
                    text: owner
                }
                Component.onCompleted: {
                    calendarEntryModel.setProperty(index, "collapsed", !collapsed)
                }
            }

            Loader {
                id: subItemLoader

                visible: !collapsed
                property variant subItemModel: subItems
                sourceComponent: collapsed ? null : subItemColumnDelegate
                onStatusChanged: if (status == Loader.Ready) item.model = subItemModel
            }
        }
    }

    Component {
        id: subItemColumnDelegate

        Column {
            property alias model: subItemRepeater.model
            width: root.width

            Repeater {
                id: subItemRepeater
                delegate: Rectangle {
                    color: "black"
                    height: 24
                    width: root.width
                    border.color: "black"
                    border.width: 2

                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        x: 30
                        font.pixelSize: 18
                        color: "white"
                        text: time + " " + heading
                    }
                }
            }
        }
    }
}

