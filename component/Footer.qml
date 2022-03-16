import QtQuick 2.0
import "../js/Footer.js" as Footer
Item {
       id:footer
       property int numberMenu: 4;
       width: parent.width;
       height: parent.height * 0.08
       anchors.bottom: parent.bottom
        Row {
            width: parent.width
            height: parent.height
            Repeater {
                id: menuRepeater
                height:parent.height
                width: parent.width
                model: footer.numberMenu

                Column {
                    width: menuRepeater.width/footer.numberMenu
                    height: menuRepeater.height


                    Row{
                        width: parent.width;
                        height: parent.height * 0.65
                        MouseArea{
                            id: footerBtnArea
                            anchors.fill: parent;
                            onClicked: {
                                //Check if is disconnect button
                                if(index === 0){
                                    _core.disconnect("chargement.qml");
                                }else{
                                    _core.changerPage(Footer.setURL(index));

                                }

                            }
                        }
                        Image{
                            id: footerBtnIcon;
                            anchors.centerIn: parent;
                            source: Footer.setIcon(index)
                            width: parent.height;
                            height: parent.height;

                            visible: {
                                console.log(_core.getActualPage())
                                if(_core.getActualPage() === Footer.setURL(index)){
                                            Qt.createQmlObject('import Qt5Compat.GraphicalEffects

                                            ColorOverlay{
                                                anchors.fill: parent
                                                source:parent
                                                color:"#0094EC"
                                                transform:rotation
                                                antialiasing: true
                                            }',footerBtnIcon);
                                        footerBtnArea.enabled = 0;
                                }

                                return true;
                            }


                        }





                    }

                    Row {
                        width: parent.width;
                        height: parent.height * 0.35
                        Text {
                            text: qsTr(Footer.setTitle(index))
                            font.family: "Segoe ui"
                            anchors.centerIn: parent;
                            horizontalAlignment: Text.AlignHCenter

                            anchors.fill: parent
                            minimumPixelSize: 8
                            font.pixelSize: 10
                            fontSizeMode: Text.Fit
                            color: "black"

                        }
                    }

                }



            }

        }
}
