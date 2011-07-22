import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
    id: agendaview
    property alias query: agendamodel.query
    property alias dayname: daytitle.text
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
    ListView {
        id: it
        height: parent.height
        anchors {
            top: daytitle.bottom
        }

        delegate: Item {
            id: anitem
            width: parent.width
            height: whenid.height
            Rectangle {
                width: parent.width
                height: parent.height
                GradientStop { position: 0.0; color: "white" }
                GradientStop { position: 1.0; color: "lightsteelblue" }
            }
            Text {
                id: whenid
                text: when + "-" + end
                MouseArea {
                    anchors { fill: parent }
                    onClicked: { pages.pop(); }
                }
            }
            Text {
                id: whatid
                text: what
                x: 100
                MouseArea {
                    anchors { fill: parent }
                    onClicked: { pages.pop(); }
                }
            }

        }
        model: AgendaModel {
            id: agendamodel
        }
    }
}
