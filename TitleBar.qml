import QtQuick 1.0

Rectangle {
    id: mytitle
    property alias pixelSize: daytitletext.font.pixelSize
    property alias text: daytitletext.text
    height: daytitletext.height

    Rectangle {
        anchors { top: mytitle.top }
        width: parent.width
        height: daytitletext.height

        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "lightsteelblue" }
        }
    }

    Text {
        id: daytitletext
        text: ""
        anchors { top: mytitle.top }
        font.pixelSize: 40
    }
}
