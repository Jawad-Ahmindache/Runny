import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.13

Window {
    property int screenWidth : 375
    property int screenHeight : 667
    property string screenOrientation
    visible: true
  // visibility: Qt.WindowFullScreen
    width: screenWidth
    height: screenHeight
    id: fenetrePrincipale
    onWidthChanged: {

        /*  fenetrePrincipale.screenWidth = this.Screen.width
            fenetrePrincipale.screenHeight = this.Screen.height
        fenetrePrincipale.screenOrientation = Screen.orientation*/
    }

    FontLoader { id: segoeUI; source: "./font/Segoe_UI.ttf" }

    Loader {
           id: pageEnCours
           source: "chargement.qml"
           visible: true
           width: parent.width
           height: parent.height
    }
    Connections {
        target: monObjet
        onPageAfficher:function(nomPage){
            pageEnCours.source = nomPage
        }
    }
}
