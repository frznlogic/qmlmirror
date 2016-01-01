
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(QT_QML_MODULES_LOCATION lib/qt5/qml)

macro(add_qml_plugin PLUGIN_ID SOURCE_FILES)

    string(REPLACE "." "/" PLUGIN_PATH "net.frozentux.weatherinfo")

    set(PLUGIN_INSTALLATION_PATH ${QT_QML_MODULES_LOCATION}/${PLUGIN_PATH})
    add_library(${PLUGIN_ID} SHARED ${SOURCE_FILES})
    qt5_use_modules(${PLUGIN_ID} Core Qml Network Positioning Declarative Quick)

    install(TARGETS ${PLUGIN_ID} DESTINATION ${PLUGIN_INSTALLATION_PATH})

    install(DIRECTORY components DESTINATION ${PLUGIN_INSTALLATION_PATH})

    # Set the library file name to be the last token of the plugin ID
    string(REPLACE "." ";" PLUGIN_LIB_NAME ${PLUGIN_ID})
    list(GET PLUGIN_LIB_NAME -1 PLUGIN_LIB_NAME)

    set(PLUGIN_LOCATION_IN_BUILD ${CMAKE_BINARY_DIR}/plugins/${PLUGIN_PATH})

    configure_file(qmldir ${PLUGIN_LOCATION_IN_BUILD}/qmldir COPYONLY)
    install(FILES ${PLUGIN_LOCATION_IN_BUILD}/qmldir DESTINATION ${PLUGIN_INSTALLATION_PATH})

    set_target_properties(${PLUGIN_ID} PROPERTIES
        OUTPUT_NAME ${PLUGIN_LIB_NAME}
        LIBRARY_OUTPUT_DIRECTORY ${PLUGIN_LOCATION_IN_BUILD}
        RUNTIME_OUTPUT_DIRECTORY ${PLUGIN_LOCATION_IN_BUILD}
    )

endmacro()

set(SOURCE_FILES
    appmodel.cpp
    appmodel.h
    main.cpp
    weatherplugin.cpp
    weatherplugin.h
    images.qrc
)


add_qml_plugin(WeatherData "${SOURCE_FILES}")


