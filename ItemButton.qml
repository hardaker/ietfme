import QtQuick 1.0

Rectangle {
    property alias text: thebutton.text
    //property whereto: "foo"
    border.width: 1
    anchors.rightMargin: 5

    anchors.fill: parent
    width:        thebutton.width + 2
    height:       thebutton.height + 2

    Text {
        id: thebutton
        text: "Map"
        anchors.top:         area.bottom
        anchors.rightMargin: 5
        MouseArea {
            anchors.fill:  parent
            onClicked: { itempages.push(mapview); }
        }
    }

    Rectangle {
        anchors.fill:  parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "lightgrey" }
        }
    }
}
