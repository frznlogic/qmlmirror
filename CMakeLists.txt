cmake_minimum_required(VERSION 2.8)

project(QmlMirror)

include(GNUInstallDirs)

find_package(Qt5Core REQUIRED)
find_package(Qt5Qml REQUIRED)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -std=c++11")

set(INSTALLATION_LOCATION ${CMAKE_INSTALL_DATADIR}/QmlMirror)

install(DIRECTORY . 
    DESTINATION ${INSTALLATION_LOCATION}
    PATTERN build EXCLUDE
    PATTERN .git EXCLUDE
    PATTERN CMakeLists.txt EXCLUDE
    PATTERN weatherinfo EXCLUDE
    PATTERN *.pro EXCLUDE
    PATTERN *.pro.* EXCLUDE
    PATTERN LICENSE EXCLUDE
    PATTERN README.md EXCLUDE
    )

add_subdirectory(weatherinfo)

