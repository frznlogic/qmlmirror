import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0

ApplicationWindow {
    title: qsTr("MagicMirror")
    width: 1080
    height: 1920
    color: "black"

    Position {
        id: positionId
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 100
    }

    Clock {
        anchors.top: positionId.bottom
        anchors.left: parent.left
        width: 360
        height: 240
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
        color: "black"
    }

}
