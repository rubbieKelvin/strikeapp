import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.11
import "qrc:/constant/routes.js" as Routes

ApplicationWindow {
    id: application
    visible: true

    StackView {
        anchors.fill: parent
        initialItem: Routes.TASKS
    }
}
