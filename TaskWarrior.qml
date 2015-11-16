import QtQuick 2.2

//import net.frozentux.qmlcomponents 1.0

Rectangle {
    id: root
    anchors.fill: parent
    color: "white"

    property string fileName: "jsondata.txt"

    JSONListModel {
        id: jsonModel
        source: "jsondata.txt"
    }


    ListView {
        id: jsonView
        anchors.fill: parent

        model: jsonModel.model

        delegate: Text {
                text: model.description
                Component.onCompleted: {
                    console.log("Text: " + text)
                }
        }
    }
}
