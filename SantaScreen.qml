//roach by oepi-loepi

import QtQuick 2.1
import qb.components 1.0
import BasicUIControls 1.0;
//import QtQuick.Controls 1.3

TransparentScreen {
	id: santaScreen
	screenTitle: "Santa!"
	opacity: 1
	property bool showSanta : false

	onShown: {
		showSanta  = true
	}

	onHidden: {
		showSanta = false
	}

	Rectangle {
		id: game
		color: "transparent"
		width: parent.width; height: parent.height  		
		anchors {
			top: parent.top
			left: parent.left
			topMargin:0
			leftMargin: 0
			}

		Timer {
			interval: 10000
			repeat: true
			running: showSanta
			triggeredOnStart:true
			onTriggered: {
				var component = Qt.createComponent("Santa.qml");
				var roach = component.createObject(game);
			}
		}
		visible:true

	}

}