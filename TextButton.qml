import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4

Button {
    id : root
    property var radius       : 8
    property var textColor    : "white"
    property var normalColor  : "lightgreen"
    property var prssedColor  : "gold"

    text : "aHa!"
    style: ButtonStyle {
        background: Rectangle {
                radius : root.radius
                color  : control.pressed ? prssedColor : normalColor
                implicitWidth  : 90
                implicitHeight : 48
            }
        label : Text {
            id             : txt
            text           : control.text
            color          : root.textColor
            font.pointSize : 12
            anchors.centerIn    : parent
            verticalAlignment   : Text.AlignVCenter
            horizontalAlignment : Text.AlignHCenter
        }
    }
}
