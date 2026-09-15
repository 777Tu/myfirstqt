cmake_minimum_required(VERSION 3.21)
project(myfirstqt LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
find_package(Qt6 REQUIRED COMPONENTS Widgets Core Gui)
qt_add_executable(myfirstqt main.cpp)
target_link_libraries(myfirstqt PRIVATE Qt6::Widgets)
set_target_properties(myfirstqt PROPERTIES
    QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android
)
