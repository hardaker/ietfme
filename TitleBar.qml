import QtQuick 1.0

Rectangle {
    id: mytitle
    //property alias pixelSize: daytitletext.font.pixelSize
    property alias text: daytitletext.text
    property alias backvisible: backbut.visible
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

    Image {
        id: backbut
        anchors {
            top: parent.top
            right: parent.right
            verticalCenter: daytitletext.verticalCenter
        }
        source: "back.png"
        MouseArea {
            anchors.fill: parent
            onClicked: { pages.pop(); }
        }
    }

    Text {
        id: daytitletext
        text: ""
        anchors { top: mytitle.top }
        font.pixelSize: 40
    }
}
