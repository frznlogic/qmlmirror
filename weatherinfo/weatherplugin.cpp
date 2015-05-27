#include "appmodel.h"
#include "weatherplugin.h"
#include <qqml.h>

void WeatherPlugin::registerTypes(const char *uri)
{
    qmlRegisterType<WeatherData>(uri, 1, 0, "WeatherData");
    qmlRegisterType<AppModel>(uri, 1, 0, "AppModel");
}
