import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.11
import "../components" as UiComponents

Page {
    id: root
    title: "tasks"

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        ListView {
            Layout.fillHeight: true
            Layout.fillWidth: true
            delegate: UiComponents.TaskItem {
                label.text: text
                checkbox.checked: checked
            }

            model: ListModel {
                ListElement {
                    text: "Do somthing today"
                    checked: false
                    date_created: ""
                    date_updated: ""
                }
                ListElement {
                    text: "Random Text"
                    checked: false
                    date_created: ""
                    date_updated: ""
                }
                ListElement {
                    text: "Tknpob'today"
                    checked: false
                    date_created: ""
                    date_updated: ""
                }
                ListElement {
                    text: "Me Again"
                    checked: false
                    date_created: ""
                    date_updated: ""
                }
                ListElement {
                    text: "Gain stuff"
                    checked: false
                    date_created: ""
                    date_updated: ""
                }
            }
        }
    }

    Button {
        text: "New"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.margins: 10
    }
}
