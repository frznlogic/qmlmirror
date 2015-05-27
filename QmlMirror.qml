import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0

ApplicationWindow {
    title: qsTr("Hello World")
    width: 640
    height: 250
    color: "black"

    Clock {
        anchors.top: parent.top
        anchors.left: parent.left
    }

    Weather {
        id: weatherId
        anchors.top: parent.top
        anchors.right: parent.right
    }
}
