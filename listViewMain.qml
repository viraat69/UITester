import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import com.sciton.controls 1.0 as ScitonControls

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello World")


    ListModel {
        id: error_log_header_row_model

        ListElement {rowElement: "ID"                 ; rowElementSpace: 60  }
        ListElement {rowElement: "Description"        ; rowElementSpace: 360 }
        ListElement {rowElement: "Fluence"            ; rowElementSpace: 52  }
        ListElement {rowElement: "PW"                 ; rowElementSpace: 52  }
        ListElement {rowElement: "Ablate"             ; rowElementSpace: 52  }
        ListElement {rowElement: "Rep\nRate"          ; rowElementSpace: 52  }
        ListElement {rowElement: "Water\nTemp"        ; rowElementSpace: 52  }
        ListElement {rowElement: "Diode\nTemp"        ; rowElementSpace: 52  }
        ListElement {rowElement: "Diode\nBld #"       ; rowElementSpace: 52  }
        ListElement {rowElement: "Hndpc\nBld #"       ; rowElementSpace: 52  }
        ListElement {rowElement: "SW\nBld #"          ; rowElementSpace: 52  }
        ListElement {rowElement: "Time\nFrom\nPwrOn"  ; rowElementSpace: 52  }
        ListElement {rowElement: "Date\n&\nTime"      ; rowElementSpace: 80  }
    }

    Row {

        anchors{
            left: parent.left
            leftMargin: 2
            right: parent.right
            rightMargin: 2
            top: parent.top
            topMargin: 5
        }
        clip: true

        Repeater {
            model: error_log_header_row_model

            Rectangle {

                width: model.rowElementSpace
                height: 60
                border.width: 0.5
                border.color: "black"
                color: "yellow"
                clip: true

                Text {
                    id: error_log_header_row_element_text
                    anchors.centerIn: parent
                    text: model.rowElement
                    elide: Text.ElideRight
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "HelveticaNeue MediumCond"
                    font.pixelSize: 12
                }
            }

        }
    }





}









