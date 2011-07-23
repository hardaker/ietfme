import QtQuick 1.0
//import Qt.labs.components.native 1.0

Page {
  ListView {
      id: it
      anchors.fill: parent

      delegate: Item {
         id: anitem
	 width: parent.width
	 height: first.height
         Column {
              id: first
	      Text {
	      	 id: whenid
	         text: when
              }
	      Text {
	      	 id: whatid
	         text: what
              }
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
