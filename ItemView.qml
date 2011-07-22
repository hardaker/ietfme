import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
    anchors { fill: parent }

    property alias daytitle: daytitle.text
    property alias itemWGName: itemWGName.text
    property alias description: description.text
    property alias roomName: roomName.text
    property alias area: area.text

    TitleBar {
        id: daytitle
        anchors.top:  parent.top
        width: parent.width
    }

    Text {
        text: "WG:"
        anchors.top:  daytitle.bottom
    }

    Text {
        id: itemWGName
        text: "test 1"
        x: 50
        anchors.top:  daytitle.bottom;
        MouseArea {
            anchors { fill: parent }
            onClicked: { pages.pop(); }
        }
    }

    Text {
        text: "About:"
        anchors.top:  itemWGName.bottom
    }

    Text {
        id: description
        x: 50
        text: "about the WG"
        anchors.top: itemWGName.bottom
        MouseArea {
            anchors { fill: parent }
            onClicked: { pages.pop(); }
        }
    }

    Text {
        text: "Room:"
        anchors.top:  description.bottom
    }

    Text {
        id: roomName
        x: 50
        text: "room"
        anchors.top: description.bottom
        MouseArea {
            anchors { fill: parent }
            onClicked: { pages.pop(); }
        }
    }

    Text {
        text: "Area:"
        anchors.top:  roomName.bottom
    }

    Text {
        id: area
        x: 50
        text: "area"
        anchors.top: roomName.bottom
        MouseArea {
            anchors { fill: parent }
            onClicked: { pages.pop(); }
        }
    }
}
