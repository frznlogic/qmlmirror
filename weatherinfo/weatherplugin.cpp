/*
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright (c) 2015 Oscar Andreasson
 */

#include "appmodel.h"
#include "weatherplugin.h"
#include <qqml.h>

void WeatherPlugin::registerTypes(const char *uri)
{
    qmlRegisterType<WeatherData>(uri, 1, 0, "WeatherData");
    qmlRegisterType<AppModel>(uri, 1, 0, "AppModel");
}
