import QtQuick 1.0
import Qt.labs.components.native 1.0

Window {
       id: top

       Rectangle {
           id: background
	   anchors { fill: parent; }
           color: "white"
       }

       Agenda {
           id: agenda
	   anchors {
	   	   fill: parent;
           }
       }

}
