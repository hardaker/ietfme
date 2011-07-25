import QtQuick 1.0
import Qt.labs.components.native 1.0

Page {
    Flickable {
        id: scrollstuff
        width: parent.width
        height: 600
        contentWidth: 1024
        contentHeight: 4096
        z: -1

        Image {
            id: map
            anchors.top:  parent.top
            width: daytitle.width
            source: "maps/maplv2.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}
