import QtQuick 2.0

Rectangle { 
    id     : root
    width  : 300
    height : Math.min(140, Math.max(45,txt.contentHeight))
    radius : 8
    color  : "#99cccccc"

    // "warning" or "tip"
    property var type : "warning"

    MouseArea {
        id           : ma_empty
        anchors.fill : parent
    }

    Image {
        id     : icon
        width  : 22
        height : width
        source : (root.type == "warning" )? "./tip_warning_icon.png" : "./tip_ok_icon.png"

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
            color               : (root.type == "warning" ) ? "#fffc107" : "#1e237d"
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
}

