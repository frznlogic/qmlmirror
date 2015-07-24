import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.2


Rectangle {
    id: root
    ListModel {
        id: calendarEntryModel

        ListElement {
            owner: "Oscar"

            subItems: [
                ListElement { time: "09:00"; heading: "Dentist" },
                ListElement { time: "10:00"; heading: "Standup" },
                ListElement { time: "12:00"; heading: "Lunch" },
                ListElement { time: "16:00"; heading: "Phone conference" }
            ]
        }

        ListElement {
            owner: "Maria"

            subItems: [
                ListElement { time: "12:00"; heading: "Lunch" },
                ListElement { time: "16:00"; heading: "Pick up Kerstin" }
            ]
        }


    }

    //  TODO: Not fixed to show nested lists
    TableView {
        id: tableView
        anchors.fill: parent
        model: calendarEntryModel
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

