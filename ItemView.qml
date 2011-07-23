import QtQuick 1.0
import Qt.labs.components.native 1.0
import QtWebKit 1.0

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
        x: 120
        anchors.top:  slottitle.bottom;
    }

    Text {
        text: "About:"
        anchors.top:  itemWGName.bottom
    }

    Text {
        id: description
        x: itemWGName.x
        text: "about the WG"
        anchors.top: itemWGName.bottom
    }

    Text {
        text: "Room:"
        anchors.top:  description.bottom
    }

    Text {
        id: roomName
        x: itemWGName.x
        text: "room"
        anchors.top: description.bottom
    }

    Text {
        text: "Area:"
        anchors.top:  roomName.bottom
    }

    Text {
        id: area
        x: itemWGName.x
        text: "area"
        anchors.top: roomName.bottom
    }

    Flickable {
        id: scrollstuff
        anchors.top:  area.bottom
        width: parent.width
        height: 600
        contentWidth: 1024
        contentHeight: 4096

        Image {
            id: map
            anchors.top:  parent.top
            width: parent.width
            source: "maps/maplv2.png"
            fillMode: Image.PreserveAspectFit
        }

        WebView {
            anchors.top:  map.bottom
            url: "https://datatracker.ietf.org/wg/netconf/"
            preferredWidth: parent.width
            preferredHeight: 1280
            scale: 1.0
        }
    }
}
