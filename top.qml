import QtQuick 1.0
import Qt.labs.components.native 1.0

Window {
       id: top

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
           id: daystop
	   anchors {
	   	   fill: parent;
           }
       }

       Page {
            id: days
            ListView {
                model: DaysListModel { id: dayslist }
                delegate: Text { text: dayname }
       	 	width: parent.width
       	 	height: parent.height
            }
       }

       Component.onCompleted: pages.push(days);
}
