import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
    Image {
        id: logo
        source: "logo-banner.png"
        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
    }
    ListView {
        model: DaysListModel { id: dayslist }
        delegate: Item {
            height: theday.height
            width: parent.width
            Rectangle {
                anchors { fill: parent }
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "white" }
                    GradientStop { position: 1.0; color: "lightsteelblue" }
                }
            }
            Text { id: theday; text: dayname; font.pixelSize: 40 }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    agendaview.dayname = dayname
                    agendaview.query = "/ietfschedule/" + dayname + "/slot"
                    pages.push(agendaview);
                }
            }
        }
        anchors { top: logo.bottom }
        width: parent.width
        height: parent.height
    }
}
