//
// Santa v1.0.7 by Oepi-Loepi
//

import QtQuick 2.1
import qb.components 1.0
import qb.base 1.0;

App {
	id: santaApp

	property url tileUrl : "SantaTile.qml"
	property url thumbnailIcon: "qrc:/tsc/onkyo-resize.png"

	property url santaScreenUrl : "SantaScreen.qml"
	property SantaScreen santaScreen

	function init() {
		registry.registerWidget("tile", tileUrl, this, null, {thumbLabel: qsTr("Santa"), thumbIcon: thumbnailIcon, thumbCategory: "general", thumbWeight: 30, baseTileWeight: 10, thumbIconVAlignment: "center"});
        	registry.registerWidget("screen", santaScreenUrl, this, "santaScreen");
	}

}
