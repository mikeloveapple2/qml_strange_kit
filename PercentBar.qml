import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle { 
    id     : root
    width  : 155
    height : 20
    color  : "transparent"

    property var total          : 25
    property var brightness     : 0.1
    property var contrast       : 0.1
    property var rotation_angle : 15

    property var value : 0

    onValueChanged: {
        var percent = value;
        if(value > 1){
            percent = 1;
        }else if(value < 0){
            percent = 0;
        }

        var num = percent * total;
        num = num.toFixed(0);
        d.count = num;
    }

    QtObject{
        id : d
        property var count : 15
    }

    Row {
        spacing: 3
        anchors{
            top : parent.top
            left : parent.left
            leftMargin : 5
        }

        Repeater {
            model : root.total
            Rectangle{
                width    : 3
                height   : 20
                rotation : root.rotation_angle
                color    : "#3d121218"
            }
        }
    }

    Row {
        anchors{
            top        : parent.top
            left       : parent.left
            leftMargin : 5
        }
        spacing: 3
        Repeater {
            model : d.count
            Item{
                width    : 3
                height   : 20
                rotation : root.rotation_angle
                Image {
                    id           : img
                    anchors.fill : parent
                    source       : "./progress_bg2.png"
                    fillMode     : Image.Tile
                }

                BrightnessContrast {
                    anchors.fill : img
                    source       : img
                    brightness   : index / root.total
                    contrast     : 0.5
                }
            }
        }
    }
}


