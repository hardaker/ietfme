import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
    anchors { fill: parent }

    Rectangle {
        anchors { top: parent.top }
        width: parent.width
        height: daytitle.height

        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "lightsteelblue" }
        }
    }

    Text {
        id: daytitle
        text: "title"
        anchors { top: parent.top }
        font.pixelSize: 40
    }

    Text {
        id: itemWGName
        text: "test 1"
        anchors.top:  daytitle.bottom;
        MouseArea {
            anchors { fill: parent }
            onClicked: { pages.pop(); }
        }
    }
    Text {
        id: description
        text: "about the WG"
        anchors.top: itemWGName.bottom
        MouseArea {
            anchors { fill: parent }
            onClicked: { pages.pop(); }
        }
    }
    Text {
        id: roomName
        text: "room"
        anchors.top: description.bottom
        MouseArea {
            anchors { fill: parent }
            onClicked: { pages.pop(); }
        }
    }
    Text {
        id: area
        text: "area"
        anchors.top: roomName.bottom
        MouseArea {
            anchors { fill: parent }
            onClicked: { pages.pop(); }
        }
    }
}
