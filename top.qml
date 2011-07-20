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
		    Text { id: theday; text: dayname; }
		    MouseArea {
		       anchors.fill: parent
		       onClicked: { pages.push(agendaview); }
		    }
		} 
       	 	width: parent.width
       	 	height: parent.height
            }
       }

       Page {
          id: agendaview
	      ListView {
	          id: it
	          anchors.fill: parent

	          delegate: Item {
	             id: anitem
	    	     width: parent.width
	    	     height: whenid.height
	             Rectangle {
                        GradientStop { position: 0.0; color: "white" }
                        GradientStop { position: 1.0; color: "lightsteelblue" }
	    	      Text {
	    	      	 id: whenid
	    	         text: when
	                  }
	    	      Text {
	    	      	 id: whatid
	    	         text: what
			 x: 100
	                  }
	             }

	      	     MouseArea {
	      	        anchors.fill: parent
	      	        onClicked: { pages.pop(); }
	      	     }

	          }
	          model: AgendaModelBuilt {
	          	  id: agendamodel
	          }

	          Rectangle {
	             width: 20
	             height: 20
	             color: "red"
	    	 anchors { bottom: it.bottom }
	          }
	           }
}
       Component.onCompleted: pages.push(days);
}
