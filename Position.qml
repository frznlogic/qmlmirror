/*
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2015 Oscar Andreasson
 */

import QtPositioning 5.2
import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick.XmlListModel 2.0
Rectangle {
    id: root
    color: "black"

    PositionSource {
        id: positionSource
        Component.onCompleted: { positionSource.update() }

    }

    XmlListModel {
        id: listModel
        property variant coordinate
        property double lng: positionSource.position.coordinate.longitude
        property double lat: positionSource.position.coordinate.latitude

        source: "http://api.geonames.org/findNearbyPlaceName?username=frznlogic&" +
                "lat=" + lat +
                "&lng=" + lng
        query: "/geonames/geoname"


        XmlRole { name: "cityname"; query: "name/string()" }
        XmlRole { name: "geonameId"; query: "geonameId/string()" }
        XmlRole { name: "countryName"; query: "countryName/string()" }
        XmlRole { name: "distance"; query: "distance/string()" }

        onStatusChanged: {
            if (status == XmlListModel.Ready)
            {
                locationName.text = listModel.get(0).cityname
                locationCountry.text = listModel.get(0).countryName
            }
        }
    }

    Rectangle {
        id: positionId
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 100
        color:"black"
        Text {
            id: locationName
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            text: "Unknown"
            font.pointSize: 48
            color: "white"
        }
        Text {
            id: locationCountry
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            text: "Unknown"
            font.pointSize: 20
            color: "white"
        }
    }
}
