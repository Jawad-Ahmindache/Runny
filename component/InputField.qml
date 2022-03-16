import QtQuick 2.0
import QtQuick.Controls 2.13

Rectangle{
    width:parent.width
    property string textLabel : "Label"
    property string textInput : "Input"
    property alias inputValue : ruTextField.text;
    property int heightInput: screenHeight*0.06
    property string mode : "normal";
    color:"transparent"
    Label {
        id: ruLabel
        text: textLabel
        font.family: segoeUI.name
        font.pixelSize: 20
        width:parent.width
        minimumPixelSize: 16
        fontSizeMode: Text.Fit
        height:font.pixelSize
    }



    TextField {

       id: ruTextField
       placeholderText: textInput
       width: parent.width
       height: heightInput
       font.pixelSize: height/2.8
       verticalAlignment: Qt.AlignVCenter
       horizontalAlignment: Qt.AlignLeft
       echoMode : parent.mode === "password" ? TextInput.Password : TextInput.Normal;

       background: Rectangle{
            color:"white"
            height: heightInput
            radius: 8
            anchors.fill:parent

            border.width: 2
            border.color: "#E8E8E8"
       }
       y: ruLabel.y + ruLabel.height*1.8

    }

    height:ruLabel.height + ruTextField.height
}


