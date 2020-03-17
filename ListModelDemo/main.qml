import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property color borderColor: "silver"
    property int borderWidth: 2
    Gradient {
        id:appColorsId
        GradientStop{position: 0.0; color: "powderblue"}
        GradientStop{position: 1.0; color: "dodgerblue"}
    }

    ListModel{
        id: listModelId
        ListElement{ name: "asd"; category : "C"}
        ListElement{ name: "rewd"; category : "C++"}
        ListElement{ name: "awqewrd"; category : "C#"}
        ListElement{ name: "aben"; category : "C#"}
        ListElement{ name: "aswewd"; category : "Java"}
        ListElement{ name: "aweeqsd"; category : "Linux"}
        ListElement{ name: "aserrrd"; category : "CentOs"}
    }

    ListView{
        id: listViewId
        property int fontSize: 24
        model:listModelId
        anchors.fill: parent
        delegate: delegateId
        highlight: Rectangle{
            width: parent.width
            color: "lightgray"
        }
        header: Rectangle{
            width: parent.width ;height: 50
            gradient: appColorsId
            border{color: borderColor; width: borderWidth}
            Text{
                text: "Founding Fathers"
                font.pixelSize: 32
                anchors.centerIn: parent
            }
        }

        footer: Rectangle{
            width: parent.width ;height: 30
            gradient: appColorsId
            border{color: borderColor; width: borderWidth}
            Text{
               color : "dodgerblue"
            }
        }
        section{
            property: "category"
            criteria: ViewSection.FullString
            labelPositioning: ViewSection.InlineLabels
            delegate: Rectangle{
                width: listViewId.width
                height: 30
                color: "lightsteelblue"
                Text {text:section; font.pixelSize: listViewId.fontSize }
            }
        }

    }

    Component{
        id:delegateId
        Item{
            id:rowId
            height: dataRowId.implicitHeight
            width: dataRowId.implicitWidth
            Row{
                id:dataRowId
                spacing: 10
                Text {
                    text: index +". " + model.name
                    font.pointSize: rowId.ListView.view.fontSize
                }
                Text {
                    text: model.category
                    font.pointSize: rowId.ListView.view.fontSize
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: rowId.ListView.view.currentIndex = index
            }
        }

    }

}
