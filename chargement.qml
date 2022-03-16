import QtQuick 2.0
import QtQuick.Controls 2.13
import "js/global.js" as Global


Item{
    width:parent.width
    height:parent.height
    Rectangle{
        color: "#0094EC"
        width:parent.width
        height:parent.height
        AnimatedImage {
            id: manLoading;
            source: "./img/man_loading.gif"
            anchors.horizontalCenter: parent.horizontalCenter
            width: Global.maxWidth(parent.width*0.80,500)
            height: width*0.80
            y: parent.height/4

        }

        Text {
            id:nomApp
            text: qsTr("Runny")
            font.family: "Segoe ui"
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            width:parent.width
            minimumPointSize: 10
            font.pointSize: 35
            fontSizeMode: Text.Fit
            font.bold: true
            color: "white"
            y: (manLoading.y + manLoading.height)
        }

        Timer {
               interval: 2000; running: true; repeat: true
               onTriggered:  { _core.changerPage("connexion.qml") }
         }


    }


}

