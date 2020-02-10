import QtQuick 2.13
import QtQuick.Controls 2.12
import QtQuick.Window 2.13

Window {
    visible: true
    width: 800
    height: 480
    title: qsTr("Tng App.")

/**
    Rectangle{
        id:dropListRctId
        width: 500
        height: 50
        color: "lightblue"
        anchors{
            top: parent.top
            left: parent.left
            topMargin: 100
            leftMargin: 210
        }
        Text{
            id:txtNameId
            height: 50
            width: 200
            text: qsTr("Name")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            //split line
            Rectangle{
                width: 1
                height: 50
                color: "black"
                anchors.right: parent.right
            }
        }

        //drop down List
        ComboBox {
            id:combId

            background: Rectangle{
                width: 300
                height: 50
                color: "lightblue"
            }
            anchors.left: txtNameId.right
            textRole: "key"
            height: 50
            width: 300
            flat: true
            pressed: true

            model: ListModel {
                ListElement { key: "First"; value: 123 }
                ListElement { key: "Second"; value: 456 }
                ListElement { key: "Third"; value: 789 }
                ListElement { key: "Fouth"; value: 123 }
                ListElement { key: "Five"; value: 456 }
                ListElement { key: "Sixth"; value: 789 }
                ListElement { key: "Seven"; value: 123 }
                ListElement { key: "Eight"; value: 456 }
                ListElement { key: "Nine"; value: 789 }
                ListElement { key: "Ten"; value: 123 }
                ListElement { key: "Eleven"; value: 456 }
                ListElement { key: "Tweenerf"; value: 789 }
            }
            delegate: Row{
                height: 50
                width: 300
                Item{
                    width: 300
                    height: 50
                    Rectangle{
                        width: 300
                        height: 1
                        color: "black"
                        anchors.bottom: parent.bottom
                    }
                    Text{anchors.centerIn: parent;text: qsTr(key)}
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            console.log(combId.currentIndex)
                            combId.popup.close()
                        }
                    }
                }
            }
            onCurrentIndexChanged: {
                console.log(currentIndex)
            }
        }
    }
    */


//    Row{
//        id:button_row
//        spacing: 10
//        Text {
//            width: 90
//            height: 30
//            renderType: Text.NativeRendering
//            text: "Button:"
//        }
//        Button{
//            text: "Button"
//            width: 120
//            height: 30
//        }
//        BasicButton{
//            text: "Button"
//            textColor: "white"
//            backgroundTheme: "green"
//        }
//        BasicButton{
//            text: "Basic Button"
//            icon.source: "qrc:/fire.png"
//            textColor: "white"
//            radius: 3
//            backgroundColor:  down
//                              ? Qt.darker("purple")
//                              : (hovered||highlighted)
//                                ? Qt.lighter("darkCyan")
//                                : checked
//                                  ? Qt.lighter("darkCyan")
//                                  : "red"
//        }
//        BasicButton{
//            width: 200
//            text: "Basic Button"
//            icon.source: "qrc:/fire.png"
//            textColor: "white"
//            radius: 3
//            backgroundTheme: "red"
//        }
//    }



    Row{
        id:combobox_row
        spacing: 10
        Text {
            width: 90
            height: 30
            renderType: Text.NativeRendering
            text: "ComboBox:"
        }

        ComboBox{
            editable: true
            width: 120
            height: 30
            model: ["First", "Second", "Third"]
        }
        BasicComboBox{
            editable: true
            model: ["First", "Second", "Third"]
            textColor: "white"
            indicatorColor: "white"
            backgroundTheme: "deepskyblue"
            onEditTextChanged: { console.log(editText); }
        }
        BasicComboBox{
            model: ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
            textColor: "white"
            radius: 3
            indicatorColor: "white"
            backgroundTheme: "green"
            itemNormalColor: "skyblue"
            itemHighlightColor: "darkCyan"
        }
    }
}
