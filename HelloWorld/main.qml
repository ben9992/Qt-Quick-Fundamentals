import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property date myDate: "2014-05-30"

    VerticalField{
        vFieldLabelId.text: "a New Label"
        vFieldTextId.text: "1000.0"
    }




    Rectangle {
        width: textId.implicitWidth + 10
        height: textId.implicitHeight + 5
        color: "dodgerblue"
        anchors.centerIn: parent
        Text {
            id: textId
            text: qsTr("Hello World Qt Quick Fundamentals")
            anchors.centerIn: parent
            font.pixelSize: 24
        }
    }
}
