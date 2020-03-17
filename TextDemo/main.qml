import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

                Text {
                    id: name
                    text: qsTr("Text Properties. a demonstration of Qt Text Control. ")
                    elide: Text.ElideRight
                    width: 100
                    font{
                        pointSize:24
                    }
                    anchors.centerIn: parent
                }
}
