import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id:button2
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -parent.height*0.1
        height:parent.height*0.1
        width:parent.width*0.4
        color:"white"
        border.width:1
        border.color:"black"
        Text {
            id: text2
            text: qsTr("Single click")
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill:parent
            onClicked:  {
                button2.color="blue"
                timer2.start()
            }
        }
    }
    Timer {
        id:timer2
        interval:2000
        onTriggered: {
            button2.color="white"
        }
    }

    Rectangle {
        id:button1
        anchors.centerIn: parent
        height:parent.height*0.1
        width:parent.width*0.4
        color:"white"
        border.width:1
        border.color:"black"
        Text {
            id: text1
            text: qsTr("Double click")
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill:parent
            onDoubleClicked:  {
                button1.color="blue"
                timer1.start()
            }
        }
    }
    Timer {
        id:timer1
        interval:2000
        onTriggered: {
            button1.color="white"
        }
    }
}
