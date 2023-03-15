import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import com.sciton.controls 1.0 as ScitonControls

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello World")

    readonly property int dividerHeight : 53
    readonly property int dividerWidth : 2

    ListModel {
        id: error_log_header_row_model

        ListElement {rowElement: "ID"                 ; rowElementDivider: true  ; rowElementSpace: 60  }
        ListElement {rowElement: "Description"        ; rowElementDivider: true  ; rowElementSpace: 360 }
        ListElement {rowElement: "Fluence"            ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "PW"                 ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "Ablate"             ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "Rep\nRate"          ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "Water\nTemp"        ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "Diode\nTemp"        ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "Diode\nBld #"       ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "Hndpc\nBld #"       ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "SW\nBld #"          ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "Time\nFrom\nPwrOn"  ; rowElementDivider: true  ; rowElementSpace: 52  }
        ListElement {rowElement: "Date\n&\nTime"      ; rowElementDivider: false ; rowElementSpace: 80  }
    }

    Row {
        id: error_log_header_row

        anchors {
            left: parent.left
            leftMargin: 2
            right: parent.right
            rightMargin: 2
            top: parent.top
            topMargin: 5
        }
        height: 65
        clip: true

        Repeater {
            id: error_log_header_row_repeater

            model : error_log_header_row_model
            delegate : Item {
                id: error_log_header_row_delegate

                width: model.rowElementSpace
                height: parent.height
                clip: true

                Item {
                    id: headerTextComponent

                    anchors.verticalCenter: parent.verticalCenter
                    width: error_log_header_row_delegate.width - dividerWidth
                    height: parent.height
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
                BorderImage {
                    id: headerDataDivider

                    source: "qrc:/images/line_divider_vertical.png"
                    height: dividerHeight
                    width: dividerWidth
                    anchors.left: headerTextComponent.right
                    anchors.verticalCenter: parent.verticalCenter
                    visible: model.rowElementDivider
                }
            }
        }
    }


    Rectangle {
        id: error_log_header_row_container_filler

        anchors.fill: error_log_header_row
        border.width: 0.8
        border.color: "black"
        color: "gray"
        opacity: 0.2
        radius: 3
        clip: true
    }




}

