import QtQuick 2.0
import Qt.labs.controls 1.0

Popup {
    id          : root
    width       : main.width
    height      : main.height
    modal       : true
    focus       : true
    closePolicy : Popup.OnEscape | Popup.OnPressOutside
    background  : Item {}

    // "warning" or "tip"
    property var type : "warning"

    Rectangle {
        id     : main
        width  : 300
        height : Math.min(140, Math.max(45,txt.contentHeight))
        radius : 8
        color  : "#991e1e2d"

        MouseArea {
            id           : ma_empty
            anchors.fill : parent
        }

        Image {
            id     : icon
            width  : 22
            height : width
            source : (root.type == "warning" )? "warning_icon.png" : "ok_icon.png"

            anchors {
                verticalCenter : parent.verticalCenter
                right          : parent.right
                rightMargin    : 20
            }
        }

        Item {
            id     : txt_frame
            height : parent.height
            clip   : true

            anchors {
                left        : parent.left
                leftMargin  : 20
                right       : icon.left
                rightMargin : 20
            }

            Text {
                id                  : txt
                color               : (root.type == "warning" ) ? "#ffc107" : "#263238"
                text                : "hello"
                wrapMode            : Text.WordWrap
                horizontalAlignment : Text.AlignLeft
                verticalAlignment   : Text.AlignVCenter
                anchors{
                    fill    : parent
                    margins : 1
                }
            }
        } // txt_frame
    } // main
    enter:Transition {
        NumberAnimation { properties: "scale"; easing.type: Easing.InOutQuad; from : 0.3 ; to : 1 }
    }

    exit :Transition {
        NumberAnimation { properties: "opacity"; easing.type: Easing.InOutQuad; from : 1 ; to : 0.3 }
    }
}
