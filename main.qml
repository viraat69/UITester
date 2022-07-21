import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import com.sciton.controls 1.0 as ScitonControls

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ScitonControls.MediaSound {
        id: m1
    }


    Row{
        x:30
        y:40

        spacing: 20

        Button {
            id: btn_1

            text: "Button-1 : clicksweeper"
            onClicked: {
                m1.play1()
            }
        }

        Button {
            id: btn_2

            text: "Button-2 : beep_off_48_Rate"
            onClicked: {
                m1.play2();
            }
        }
        Button {
            id: btn_3

            text: "Button-2 : button"
            onClicked: {
                m1.play3();
            }
        }
    }

}
