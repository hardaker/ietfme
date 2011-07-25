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

    //
    // Page buttons
    //

    ItemButton {
        id: mapButton
        text: "Map"
        anchors.top:  area.bottom
        whereto: mapview
    }

    ItemButton {
        id: draftsButton
        text: "Drafts"
        anchors.top:  area.bottom
        anchors.left: mapButton.right
        whereto: idview
    }

    ItemButton {
        text: "test"
        anchors.left: draftsButton.right
        anchors.top:  area.bottom
    }

    //
    // Pages
    //

    PageStack {
        id: itempages
        width: parent.width
        anchors.top: mapButton.bottom
        z: -1
    }

    MapView {
       id: mapview
    }

    IdView {
        id: idview
    }

    Component.onCompleted: {
        itempages.clear();
        itempages.push(mapview);
    }
}
