import QtQuick 1.0
import Qt.labs.components.native 1.0

Window {
       id: top
       height: 800
       width:  400

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

       ItemView {
           id: itemview
       }

       DayView {
          id: agendaview
       }

       Component.onCompleted: {
         pages.push(days);
       }
}
