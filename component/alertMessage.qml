import QtQuick 2.0

Item{
    id: alertItem
    property string type : "error"
    property string textAlert : "Default"
    property string textColor : "white"
    width: parent.width
    height: 40

    Rectangle{
        id: alertBox;

        visible: true
        width: parent.width;
        height:parent.height;
        color: {
            if(parent.type == "error")
                return "#c23616";
            if(parent.type == "warning")
                return "#e1b12c";
            if(parent.type == "success")
                return "#3aa32a";
        }



        Text {
            text: alertItem.textAlert
            font.family: "Segoe ui"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            width:parent.width
            minimumPointSize: 10
            font.pointSize: 15
            fontSizeMode: Text.Fit
            color: alertItem.textColor
        }
    }
}
