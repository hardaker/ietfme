import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
    anchors { fill: parent }

    property alias daytitle: daytitle.text
    property alias description: description.text
    property alias area: area.text
    property alias slotname: slottitle.text

    property string wgName
    property string roomName

    onWgNameChanged: {
        idview.wgName = wgName
        agendaview.wgName = wgName
        txtagendaview.wgName = wgName
    }

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
        text: wgName
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
        id: roomNameObj
        x: itemWGName.x
        text: roomName
        anchors.top: description.bottom
    }

    Text {
        text: "Area:"
        anchors.top:  roomNameObj.bottom
    }

    Text {
        id: area
        x: itemWGName.x
        text: "area"
        anchors.top: roomNameObj.bottom
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
        text: "Tracker"
        anchors.top:  area.bottom
        anchors.left: mapButton.right
        whereto: idview
    }

    ItemButton {
        id: wgButton
        text: "HTML Agenda"
        anchors.top:  area.bottom
        anchors.left: draftsButton.right
        whereto: agendaview
    }

    ItemButton {
        id: wgTxtButton
        text: "Text Agenda"
        anchors.top:  area.bottom
        anchors.left: wgButton.right
        whereto: txtagendaview
    }

    //
    // Pages
    //

    PageStack {
        id: itempages
        width: parent.width
        anchors.top: mapButton.bottom
        z: -10
    }

    MapView {
       id: mapview
       room: roomName
    }

    IETFWebView {
        id: idview
        wgName: wgName
    }

    IETFWebView {
        id: agendaview
        wgName: wgName
        webPrefix: "http://www.ietf.org/proceedings/81/agenda/"
        webSuffix: ".html"
    }

    IETFWebView {
        id: txtagendaview
        wgName: wgName
        webPrefix: "http://www.ietf.org/proceedings/81/agenda/"
        webSuffix: ".txt"
    }

    Component.onCompleted: {
        itempages.clear();
        itempages.push(mapview);
    }
}
