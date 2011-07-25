import QtQuick 1.0
import Qt.labs.components.native 1.0

Window {
       id: top
       height: 400
       width:  800

       Rectangle {
           id: background
	   anchors { fill: parent; }
           color: "white"
       }

       PageStack {
           id: pages
	   anchors { fill: parent }
       }

       Days {
          id: days
       }


       DayView {
          id: agendaview
       }

       SlotView {
           id: slotview
       }

       ItemView {
           id: itemview
           roomName: parent.roomName
       }

       Component.onCompleted: {
           pages.push(days);
       }
}
