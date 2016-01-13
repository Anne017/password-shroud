import QtQuick 2.4
import Ubuntu.Components 1.3

Page {
  id: passwordPage
  title: i18n.tr("password change")
  visible: false
  Column {
    id: inputElements
    spacing: units.gu(2)
    width: parent.width
    anchors {
      top: parent.top
      left: parent.left
      right: parent.right
      margins: units.gu(2)
    }

    Label {
      text: "old mantra"
    }
    TextField {
      id: oldPasswordField
      width: parent.width
    }

    Label {
      text: "new mantra"
    }
    TextField {
      id: newPasswordField
      width: parent.width
    }
  }
  Button {
    text: i18n.tr("change password")
    color: UbuntuColors.orange
    anchors {
      margins: units.gu(2)
      top: inputElements.bottom
      horizontalCenter: parent.horizontalCenter
    }
    onClicked: {
      console.log("password change clicked")
      //var ret = ctrl.addentry(inputNameField.text, inputUrlField.text, inputPasswordField.text)
    }
  }
}