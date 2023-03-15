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


    Rectangle {
        id: bor

        x:30
        y:60

        width: 400
        height: 700
        border.color: "red"
        border.width: 2

        ListView {
            implicitWidth: 250
            implicitHeight: 700
            anchors.fill: parent
            clip: true

            model: m1.soundfileLists
            delegate: Rectangle {
                width: parent.width
                height: 20

                Text {
                    text: modelData
                }
            }
        }

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


//"Appear.wav"
//"Clean Notification.wav"
//"Email Notification.wav"
//"Incoming Mail.wav"
//"Interface Opener.wav"
//"Interface Sound #13.wav"
//"Message.wav"
//"Simple Mail Alert Tone.wav"
//"SMS Notification.wav"
//"Technology Message.wav"
//"Text Message.wav"
//"Warning.wav"
