import QtPositioning 5.2
import QtQuick 2.3

Rectangle {
    id: root

    PositionSource {
        id: positionSource
        onPositionChanged: { }
        Component.onCompleted: { positionSource.update() }

    }

    XmlListModel {
        id: listModel
        property variant coordinate

        source: "http://api.geonames.org/findNearbyPlaceName?" +
                "lat=" + coordinate.latitude +
                "&lng=" + coordinate.longitude
        query: "/geonames/geoname"


        XmlRole { name: "toponymName"; query: "toponymName/string()" }
        XmlRole { name: "name"; query: "name/string()" }
        XmlRole { name: "lat"; query: "lat/string()" }
        XmlRole { name: "lng"; query: "lng/string()" }
        XmlRole { name: "geonameId"; query: "geonameId/string()" }
        XmlRole { name: "countryCode"; query: "countryCode/string()" }
        XmlRole { name: "countryName"; query: "countryName/string()" }
        XmlRole { name: "distance"; query: "distance/string()" }
    }

}

