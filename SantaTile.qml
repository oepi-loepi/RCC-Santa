import QtQuick 2.1
import BasicUIControls 1.0
import qb.components 1.0

Tile {
	id: santaTile
	property bool dimState: screenStateController.dimmedColors

	NewTextLabel {
		id: clickText
		width: isNxt ? 284 : 220;  
		height: isNxt ? 35 : 30
		buttonActiveColor: "grey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Click here for Santa!"
		anchors {
			top: parent.top
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		onClicked: {stage.openFullscreen(app.santaScreenUrl);}
		visible: !dimState
	}
	visible: !dimState
}