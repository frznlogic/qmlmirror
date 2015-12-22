/*
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2015 Oscar Andreasson
 */

import QtQuick 2.0
import net.frozentux.weatherinfo 1.0


MirrorWindow {
    id: root
    color: "black"
    windowHeight: 3

    WeatherInfo {
        id: weatherdata

        width: root.width
        height: root.height
    }
}
