cmake_minimum_required(VERSION 3.24)
project(Calculator LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml Quick)

qt_add_executable(calculator
    src/main.cpp
    src/calculator.h
    src/calculator.cpp
    qml/qml.qrc
)

target_link_libraries(calculator
    PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
)
