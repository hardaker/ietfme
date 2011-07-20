import QtQuick 1.0
import Qt.labs.components.native 1.0

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
		        width: parent.width
			height: parent.height
                        GradientStop { position: 0.0; color: "white" }
                        GradientStop { position: 1.0; color: "lightsteelblue" }
                     }
	    	      Text {
	    	      	 id: whenid
	    	         text: when
	                  }
	    	      Text {
	    	      	 id: whatid
	    	         text: what
			 x: 100
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
