#ifndef WEATHERPLUGIN_H
#define WEATHERPLUGIN_H

#include <QQmlExtensionPlugin>

class WeatherPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri);
};

#endif // WEATHERPLUGIN_H
