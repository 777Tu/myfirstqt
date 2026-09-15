import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Calculator"
    
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10
        
        TextField {
            id: displayField
            text: calculator.display
            readOnly: true
            font.pixelSize: 32
            horizontalAlignment: Text.AlignRight
            Layout.fillWidth: true
            Layout.preferredHeight: 80
            background: Rectangle {
                color: "#f0f0f0"
                border.color: "#cccccc"
                radius: 5
            }
        }
        
        GridLayout {
            columns: 4
            rowSpacing: 5
            columnSpacing: 5
            Layout.fillWidth: true
            Layout.fillHeight: true
            
            Button {
                text: "C"
                Layout.fillWidth: true
                Layout.fillHeight: true
                font.pixelSize: 20
                onClicked: calculator.clear()
                background: Rectangle {
                    color: "#ff6b6b"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            
            Button {
                text: "/"
                Layout.fillWidth: true
                Layout.fillHeight: true
                font.pixelSize: 20
                onClicked: calculator.appendOperator("/")
                background: Rectangle {
                    color: "#4ecdc4"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            
            Button {
                text: "*"
                Layout.fillWidth: true
                Layout.fillHeight: true
                font.pixelSize: 20
                onClicked: calculator.appendOperator("*")
                background: Rectangle {
                    color: "#4ecdc4"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            
            Button {
                text: "-"
                Layout.fillWidth: true
                Layout.fillHeight: true
                font.pixelSize: 20
                onClicked: calculator.appendOperator("-")
                background: Rectangle {
                    color: "#4ecdc4"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            
            Repeater {
                model: [7, 8, 9]
                Button {
                    text: modelData
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    font.pixelSize: 20
                    onClicked: calculator.appendNumber(text)
                    background: Rectangle {
                        color: "#95e1d3"
                        radius: 5
                    }
                    contentItem: Text {
                        text: parent.text
                        font: parent.font
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
            
            Button {
                text: "+"
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.rowSpan: 2
                font.pixelSize: 20
                onClicked: calculator.appendOperator("+")
                background: Rectangle {
                    color: "#4ecdc4"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            
            Repeater {
                model: [4, 5, 6]
                Button {
                    text: modelData
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    font.pixelSize: 20
                    onClicked: calculator.appendNumber(text)
                    background: Rectangle {
                        color: "#95e1d3"
                        radius: 5
                    }
                    contentItem: Text {
                        text: parent.text
                        font: parent.font
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
            
            Repeater {
                model: [1, 2, 3]
                Button {
                    text: modelData
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    font.pixelSize: 20
                    onClicked: calculator.appendNumber(text)
                    background: Rectangle {
                        color: "#95e1d3"
                        radius: 5
                    }
                    contentItem: Text {
                        text: parent.text
                        font: parent.font
                        color: "white"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
            
            Button {
                text: "="
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.rowSpan: 2
                font.pixelSize: 20
                onClicked: calculator.calculate()
                background: Rectangle {
                    color: "#38b6a8"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            
            Button {
                text: "0"
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.columnSpan: 2
                font.pixelSize: 20
                onClicked: calculator.appendNumber(text)
                background: Rectangle {
                    color: "#95e1d3"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            
            Button {
                text: "."
                Layout.fillWidth: true
                Layout.fillHeight: true
                font.pixelSize: 20
                onClicked: {
                    if (calculator.display.indexOf(".") === -1) {
                        calculator.appendNumber(".")
                    }
                }
                background: Rectangle {
                    color: "#95e1d3"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }
    }
}
