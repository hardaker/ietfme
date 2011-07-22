import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
    id: slotview
    property alias query: slotmodel.query
    property alias dayname: daytitle.text
    property alias slotname: slottitle.text
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
    Rectangle {
        anchors { top: slottitle.top }
        width: parent.width
        height: slottitle.height

        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "lightsteelblue" }
        }
    }

    Text {
        id: daytitle
        text: "day"
        anchors { top: parent.top }
        font.pixelSize: 40
    }
    Text {
        id: slottitle
        text: "slot"
        anchors { top: daytitle.bottom }
        font.pixelSize: 20
    }
    ListView {
        id: slotviewlist
        height: parent.height
        anchors {
            top: slottitle.bottom
        }

        delegate: Item {
            id: aslotitem
            width: parent.width
            height: wgnameid.height
            Rectangle {
                width: parent.width
                height: wgnameid.height
                GradientStop { position: 0.0; color: "white" }
                GradientStop { position: 1.0; color: "lightsteelblue" }
            }
            Text {
                id: wgnameid
                text: wgname
                MouseArea {
                    anchors { fill: parent }
                    onClicked: { pages.push(itemview); }
                }
            }
            Text {
                x: 100
                id: wgdescriptionid
                text: wgdescription
                MouseArea {
                    anchors { fill: parent }
                    onClicked: { pages.push(itemview); }
                }
            }
        }
        model: SlotModel {
            id: slotmodel
        }
    }
}
