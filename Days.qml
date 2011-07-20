import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
     id: days
     ListView {
         model: DaysListModel { id: dayslist }
         delegate: Text { text: dayname }
	 width: parent.width
	 height: parent.height
     }
}
