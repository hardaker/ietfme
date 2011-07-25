import QtQuick 1.0
import Qt.labs.components.native 1.0
import QtWebKit 1.0

Page {
    id: idview
    property string wgName

    onWgNameChanged: {
        console.log("here: " + wgName)
        idscrollstuff.wgName = wgName // for some reason auto-binding fails
    }

    Flickable {
        property alias wgName: draftwebview.wgName
        id: idscrollstuff
        width: parent.width
        height: 600
        contentWidth: 1024
        contentHeight: 4096
        z: -1

        WebView {
            id: draftwebview
            property string wgName
            url: "https://datatracker.ietf.org/wg/"+ wgName + "/"
            preferredWidth: parent.width
            preferredHeight: 1280
            scale: 1.0
        }
    }
}
