import QtQuick 1.0
XmlListModel {
    id: slotmodel
    //source: "http://www.hardakers.net/ietf/agenda.xml"
    source: "qrc:/agenda.xml"
    query: "//Monday/slot[3]/meeting"
    //query: "//item"

    XmlRole { name: "wgname"; query: "wgname/string()" }
    XmlRole { name: "wgdescription"; query: "wgdescription/string()" }
    XmlRole { name: "area"; query: "area/string()" }
    XmlRole { name: "room"; query: "room/string()" }
}

