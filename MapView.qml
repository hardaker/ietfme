import QtQuick 1.0
//import Qt.labs.components.native 1.0

Page {
    //property alias wgName:  scrollstuff.wgName
    id: mapview
    property string room

    onRoomChanged: {
        scrollstuff.room = room // for some reason automatic binding to inside the flickable is failing (4.7.3)
    }

    Flickable {
        id: scrollstuff
        width: parent.width
        height: 600
        contentWidth: 1024
        contentHeight: 4096
        z: -1
        property alias room: map.room

        Image {
            property string room
            id: map
            anchors.top:  parent.top
            width: daytitle.width
            source: "maps/" + room + ".png"
            fillMode: Image.PreserveAspectFit
        }
    }

}
