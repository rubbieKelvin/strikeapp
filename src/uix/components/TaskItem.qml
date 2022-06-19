import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.11

Item {
    id: root
    height: 40
    property alias label: label
    property alias checkbox: checkbox

    RowLayout {
        id: row
        anchors.fill: parent
        anchors.margins: 10

        spacing: 5

        CheckBox {
            id: checkbox
        }
        Label {
            id: label
        }
    }
}
