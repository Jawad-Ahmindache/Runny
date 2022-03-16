import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.13


Window {
    property int screenWidth : 375 //Screen.desktopAvailableWidth
    property int screenHeight : 600 //Screen.desktopAvailableHeight
    property string screenOrientation
    visible: true
   // visibility: Qt.WindowFullScreen
    width: screenWidth
    height: screenHeight
    id: fenetrePrincipale


    FontLoader { id: segoeUI; source: "./font/Segoe_UI.ttf" }

    Loader {
           id: pageEnCours
           source: "chargement.qml"
           visible: true
           width: parent.width
           height: parent.height
    }
    Connections {
        target: _core
        onPageAfficher:function(nomPage){
            pageEnCours.source = nomPage
        }
    }


}
