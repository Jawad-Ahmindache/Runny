import QtQuick 2.0
import "../js/global.js" as Global

Item {
    id : headerItem
    width: parent.width
    height: parent.height * 0.10
    anchors.top: parent.top
    Grid {
        columns: 3
        spacing: 2

        width: parent.width
        height: parent.height
        Rectangle {

                height: parent.height
                width: parent.width * 0.20

                Image{
                    id: logoHeader
                    source: "../img/favicon2.png"

                    width: parent.width/1.8;
                    height: parent.width/1.8

                    anchors.centerIn: parent

                }
        }
        Rectangle {

                width: parent.width * 0.60
                height:parent.height


                Rectangle{
                    id: firstTextBox
                    width: parent.width;
                    height: parent.height/2
                    Text {
                        id: title
                        text: qsTr("Classement des courses")
                        font.family: "Segoe ui"
                        anchors.horizontalCenter: parent.horizontalCenter
                        horizontalAlignment: Text.AlignHCenter
                        width:parent.width

                        verticalAlignment: Text.AlignBottom
                        minimumPixelSize: 7
                        font.pixelSize: 18
                        fontSizeMode: Text.Fit
                        font.bold: true
                        color: "black"

                    }
                }



                Rectangle{
                    width: parent.width;
                    y: firstTextBox.height
                    height: parent.height/2
                    Text {
                        text: qsTr("Sous titre de la page")
                        font.family: "Segoe ui"
                        anchors.horizontalCenter: parent.horizontalCenter
                        horizontalAlignment: Text.AlignHCenter
                        width:parent.width
                        minimumPixelSize:5
                        y: parent.top + 5
                        font.pixelSize: 13
                        fontSizeMode: Text.Fit
                        color: "black"

                    }
                }


        }
        Rectangle {
                width: parent.width * 0.20
                height: parent.height

                Image {
                    source: "../img/back-arrow.png"

                    width: parent.height/3;
                    height: parent.height/3

                    anchors.centerIn: parent
                }

        }

    }
}
