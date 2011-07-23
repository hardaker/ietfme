import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
    anchors { fill: parent }

    property alias daytitle: daytitle.text
    property alias itemWGName: itemWGName.text
    property alias description: description.text
    property alias roomName: roomName.text
    property alias area: area.text
    property alias slotname: slottitle.text

    TitleBar {
        id: daytitle
        anchors.top:  parent.top
        width: parent.width
    }

    TitleBar {
        id: slottitle
        anchors.top:  daytitle.bottom
        width: parent.width
        pixelSize: 20
        backvisible: false
        text: ""
    }

    Text {
        text: "WG:"
        anchors.top:  slottitle.bottom
    }

    Text {
        id: itemWGName
        text: "test 1"
        x: 50
        anchors.top:  slottitle.bottom;
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
    }

    Image {
        id: map
        anchors.top:  area.bottom
        width: parent.width
        source: "maps/maplv2.png"
        fillMode: Image.PreserveAspectFit
    }
}
