import QtQuick 1.0

Rectangle {
    property alias text: thebutton.text
    property Item whereto
    border.width: 1
    anchors.rightMargin: 4
    anchors.leftMargin: 4
    anchors.topMargin: 2

    width:        thebutton.width
    height:       thebutton.height

    Rectangle {
        anchors.fill:  parent
        anchors.top:   parent.top
        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "lightgrey" }
        }
    }
    Text {
        id: thebutton
        text: "Map"
        anchors.rightMargin: 5
        anchors.top:   parent.top
        MouseArea {
            anchors.fill:  parent
            onClicked: {
                itempages.push(whereto);
            }
        }
    }

}
