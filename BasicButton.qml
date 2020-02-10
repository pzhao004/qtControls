import QtQuick 2.12
import QtQuick.Templates 2.12 as T
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12

//qtquickcontrols2\src\imports\controls\Button.qml
//from Customizing Button
T.Button {
    id:control

    //可以像源码一样，定义一个全局的样式，然后取全局样式中对应的颜色
    //checked选中状态，down按下状态，hovered悬停状态
    property color textColor: "white"
    property color backgroundTheme: "darkCyan"
    property color backgroundColor: control.down
                                    ? Qt.darker(backgroundTheme)
                                    : (control.hovered||control.highlighted)
                                      ? Qt.lighter(backgroundTheme)
                                      : control.checked
                                        ? backgroundTheme
                                        : backgroundTheme
    property int radius: 0     //背景rect的圆角

    implicitWidth: 90
    implicitHeight: 30
    leftPadding: 5
    rightPadding: 5
    spacing: 5
    font{
        family: "SimSun"
        pixelSize: 16
    }

    //按钮中显示的内容
    //源码用的impl里的IconLabel，但是这个不能单独设置renderType: Text.NativeRendering
    contentItem: Row{
        id:btn_row
        width: control.width
        spacing: control.spacing
        Image {
            id:btn_icon
            anchors{
                verticalCenter: parent.verticalCenter
            }
            source: control.icon.source //借用icon的接口
        }
        Text{
            id:btn_text
            anchors{
                verticalCenter: parent.verticalCenter
            }
            width: btn_icon.width
                   ? btn_row.width-btn_row.spacing-btn_icon.width
                   : btn_row.width
            text: control.text
            color: control.textColor
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
            font: control.font
        }
    }

    //背景
    background: Rectangle{
        implicitWidth: control.implicitWidth
        implicitHeight: control.implicitHeight
        radius: control.radius
        //visible: !control.flat || control.down || control.checked || control.highlighted
        color: control.backgroundColor
    }

}
