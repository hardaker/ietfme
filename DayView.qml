import QtQuick 1.0
//import Qt.labs.components.native 1.0

Page {
    id: agendaview
    property alias query: agendamodel.query
    property alias dayname: daytitlex.text
    anchors { fill: parent }

    TitleBar {
        id:   daytitlex
        width: parent.width
        anchors { top: parent.top }
    }

    ListView {
        id: it
        height: parent.height
        anchors {
            top: daytitlex.bottom
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
                    onClicked: {
                        slotview.dayname = agendaview.dayname
                        slotview.slotname = what
                        slotview.query = "/ietfschedule/" + dayname + "/slot[what='" + what + "']/meeting"
                        pages.push(slotview);
                    }
                }
            }
            Text {
                id: whatid
                text: what
                x: 120
                MouseArea {
                    anchors { fill: parent }
                    onClicked: {
                        slotview.dayname = agendaview.dayname
                        slotview.slotname = what
                        slotview.query = "/ietfschedule/" + dayname + "/slot[what='" + what + "']/meeting"
                        pages.push(slotview);
                    }
                }
            }

        }
        model: AgendaModel {
            id: agendamodel
        }
    }
}
