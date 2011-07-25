import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
    id: slotview
    property alias query: slotmodel.query
    property alias dayname: daytitle.text
    property alias slotname: slottitle.text
    anchors { fill: parent }

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
                    onClicked: {
                        itemview.daytitle = daytitle.text
                        itemview.wgName = wgname
                        itemview.description = wgdescription
                        itemview.area = area
                        itemview.roomName = room
                        itemview.slotname = slotview.slotname

                        pages.push(itemview);
                    }
                }
            }
            Text {
                x: 100
                id: wgdescriptionid
                text: wgdescription
                MouseArea {
                    anchors { fill: parent }
                    onClicked: {
                        itemview.daytitle = daytitle.text
                        itemview.wgName = wgname
                        itemview.description = wgdescription
                        itemview.area = area
                        itemview.roomName = room
                        itemview.slotname = slotview.slotname
                        pages.push(itemview);
                    }
                }
            }
        }
        model: SlotModel {
            id: slotmodel
        }
    }
}
