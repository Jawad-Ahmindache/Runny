import QtQuick 2.0


Rectangle{
    width: Screen.width;
    height: Screen.width*0.05
    color:"red";
    y:0;
    Text {
        text: qsTr("Test")
        font.family: "Segoe ui"
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        width:parent.width
        minimumPointSize: 10
        font.pointSize: 35
        fontSizeMode: Text.Fit
        font.bold: true
        color: "white"
    }
}
