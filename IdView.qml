import QtQuick 1.0
import Qt.labs.components.native 1.0
import QtWebKit 1.0

Page {
    Flickable {
        id: scrollstuff
        anchors.top:  area.bottom
        width: parent.width
        height: 600
        contentWidth: 1024
        contentHeight: 4096
        z: -1

        WebView {
            anchors.top:  map.bottom
            url: "https://datatracker.ietf.org/wg/"+ roomName.text + "/"
            preferredWidth: parent.width
            preferredHeight: 1280
            scale: 1.0
        }
    }
}
