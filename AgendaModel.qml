import QtQuick 1.0
XmlListModel {
    id: agendamodel
    source: "http://www.hardakers.net/ietf/agenda.xml"
    //query: "//h2[@class='ietf-divider']"
    query: "//slot"

    XmlRole { name: "when"; query: "start/string()" }
    XmlRole { name: "what"; query: "what/string()" }
}

