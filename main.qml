import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Row{
        x:30
        y:40

        spacing: 20

        Button {
            id: btn_1

            text: "Button-1"
        }

        Button {
            id: btn_2

            text: "Button-2"
        }
    }

}
