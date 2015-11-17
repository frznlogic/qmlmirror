import QtQuick 2.2

//import net.frozentux.qmlcomponents 1.0

Rectangle {
    id: root
    color: "black"

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
                color: "white"
                Component.onCompleted: {
                    console.log("Text: " + text)
                }
        }
    }
}
