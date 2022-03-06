import QtQuick 2.0
import QtQuick.Controls 2.13
import "component/"


Item{

    width:parent.width
    height:parent.height
    AlertMessage{

    }

    Rectangle{
        color: "#0094EC"
        width:parent.width
        height:parent.height
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter


        Image{
            id: logoConnexion
            source: "./img/favicon.png"
            width: parent.width * 0.70
            height: width
            y:parent.width*0.10
            anchors.horizontalCenter: parent.horizontalCenter

        }

        Rectangle{
            id: inputBox
            width:parent.width*0.70
            anchors.horizontalCenter: parent.horizontalCenter
            y: logoConnexion.y + logoConnexion.height
            height: parent.height/3
            color:"transparent"

            InputField {
                id:login
                textLabel: "Login"
                textInput: "Entrez votre login"
                y: 0



            }
            InputField {
                id:password
                textLabel: "Mot de passe"
                textInput: "Entrez votre mot de passe"
                y: 100
            }

            Rectangle{
                id: boutonsBox
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                y:  password.y + password.height + 50
                height:screenHeight*0.07
                radius: 8
                color:"transparent"
                Rectangle{
                    property string parentColor: "#eccf00"
                    id: boutonSite
                    height: parent.height
                    width: (parent.width/2) - 10
                    color:parentColor
                    radius: 8
                    y:0;
                    x:0;


                    Text {
                        height:parent.height

                        text: "SITE"
                        font.family: segoeUI.name
                        font.pixelSize: 20
                        width:parent.width
                        minimumPixelSize: 10
                        font.bold:true
                        fontSizeMode: Text.Fit
                        verticalAlignment:  TextInput.AlignVCenter
                        horizontalAlignment:  TextInput.AlignHCenter


                    }



                    MouseArea {
                        id: mouseAreaSITE
                        cursorShape:Qt.PointingHandCursor
                        anchors.fill: parent



                    }

                    states: [ State {
                            name: "moved"; when: mouseAreaSITE.pressed
                            PropertyChanges { target: boutonSite; color:"white"}
                        }
                    ]
                    transitions: Transition {
                        PropertyAnimation {  property: "color"; to:"white"; duration: 300; easing.type: Easing.OutBack;}
                    }


                }


                Rectangle{
                    id: boutonConnexion
                    height: parent.height
                    width: (parent.width/2)
                    x:boutonSite.width + 10
                    color:"#98ec00"
                    radius: 8


                    Text {
                        text: "LOGIN"
                        font.family: segoeUI.name
                        font.pixelSize: 20
                        width:parent.width
                        height:parent.height
                        minimumPixelSize: 10
                        font.bold:true
                        fontSizeMode: Text.Fit
                        verticalAlignment:  TextInput.AlignVCenter
                        horizontalAlignment:  TextInput.AlignHCenter

                    }
                    Connections{
                        target: _User
                        onLoginResult:function(response){
                            console.log(response);
                        }
                    }

                    MouseArea {
                        id: mouseAreaConnexion
                        cursorShape:Qt.PointingHandCursor
                        anchors.fill: parent

                        onClicked:  {
                            _User.newConnexion(login.inputValue,password.inputValue);
                       }



                    }

                    states: [ State {
                            name: "moved"; when: mouseAreaConnexion.pressed
                            PropertyChanges { target: boutonConnexion; color:"white"}
                        }
                    ]
                    transitions: Transition {
                        PropertyAnimation {  property: "color"; to:"white"; duration: 300; easing.type: Easing.OutBack;}
                    }

                }

            }

        }






    }


}

