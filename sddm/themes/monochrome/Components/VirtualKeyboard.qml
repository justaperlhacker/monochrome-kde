import QtQuick 2.15
import QtQuick.VirtualKeyboard

// On-screen keyboard (Qt Virtual Keyboard).
//
// `activated` is toggled by the keyboard button on the login panel.
// While inactive the panel stays hidden so users with a hardware
// keyboard (e.g. a Bluetooth one) never see it unless they ask for it.
InputPanel {
  id: inputPanel
  property bool activated: false
  property alias keyboardActive: inputPanel.activated
  active: activated
  visible: activated
  width: parent ? parent.width : 0
}
