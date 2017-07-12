import QtQuick 2.0
import Qt.labs.controls 1.0

Flickable {
    id: flickArea

    contentWidth       : txt.width
    contentHeight      : txt.contentHeight
    flickableDirection : Flickable.VerticalFlick
    clip               : true

    property alias textComponent : txt
    property alias text  : txt.text
    property alias color : txt.color

    TextEdit{
        id       : txt
        wrapMode : TextEdit.Wrap
        width    : parent.width;
        readOnly : true
    }
    ScrollBar.vertical: ScrollBar { }
}
