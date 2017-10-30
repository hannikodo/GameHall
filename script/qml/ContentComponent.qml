import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    // don't forget to expose the internal property using alias if you want you use it as a component
    property alias currentIndex: swipeView.currentIndex
    SwipeView {
        id: swipeView
        anchors.fill: parent
        Page {
            ChickenLeg {
                name: "杨光"
                x: 5; y:padd
            }

            ChickenLeg {
                name: "蔡益盛"
                x: 5; y: height+2*padd
            }

            ChickenLeg {
                name: "黄怡霖"
                x: 5; y: height*2+3*padd
            }

            ChickenLeg {
                name: "韩敏皓"
                x: 5; y: height*3+4*padd
            }

            ChickenLeg {
                name: "潘山"
                x: 5; y: height*4+5*padd
            }
        }

        Page {
            Button {
                onClicked: {
                    popup.open()
                    console.log("Button clicked")
                }
                Popup {
                    id: popup
                    parent: ApplicationWindow.overlay
                    x: (parent.width - width) / 2
                    y: (parent.height - height) / 2
                    width: 50
                    height: 50
                }
            }
        }
    }
}
