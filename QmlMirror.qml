import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0

ApplicationWindow {
    title: qsTr("MagicMirror")
    width: 1080
    height: 1920
    color: "black"

    Clock {
        anchors.top: parent.top
        anchors.left: parent.left
        width: 360
        height: 240
    }

    Weather {
        id: weatherId
        anchors.top: parent.top
        anchors.right: parent.right
        width: 360
        height: 240
    }

    Transport {
        id: transportId
        anchors.top: weatherId.bottom
        anchors.right: parent.right
        width: 360
        height: 480
        color: "black"
    }

}
