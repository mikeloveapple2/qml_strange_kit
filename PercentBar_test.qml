import QtQuick 2.0

Rectangle { 
    id : root
    width : 480
    height : 360
    color : "black"

    PercentBar {
        id: bar
        x: 23
        y: 38
        value:  0
        total : 50
    }

    SequentialAnimation {
        running: true
        loops:  Animation.Infinite
        NumberAnimation { target: bar; property: "value"; to: 1; duration: 5000 }
        NumberAnimation { target: bar; property: "value"; to: 0; duration: 6000 }
    }
}


