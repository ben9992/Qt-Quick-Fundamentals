import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rectangle Demo")


    Item{
        anchors.centerIn: parent
        Rectangle {
            id:firstRectId
            width: 200
            height: 50
            color: "#ff0000"

        }

        Rectangle {

            color: "#d36767"
            width: firstRectId.width/4
            height: firstRectId.height
            radius: 100
            anchors.left: firstRectId.right
            border.width:2

            gradient: Gradient {
                GradientStop {
                    position: 0.00;
                    color: "#860c0c";
                }
                GradientStop {
                    position: 1.00;
                    color: "#ffffff";
                }
            }
        }

    }

}


