var centerLatitude = '-37.8135';
var centerLongitude = '144.973';
var startZoom = 16;
var map;
var bounds = new GLatLngBounds();

function addMarker(lat, lng, desc) {
	var latlng = new GLatLng(lat, lng)
	var marker = new GMarker(latlng);
	GEvent.addListener(marker, 'click', 
		function() {
			marker.openInfoWindowHtml(desc);
		}
	);
	bounds.extend(latlng);
	map.addOverlay(marker);
}

function init() {
	if (GBrowserIsCompatible()) {
		map = new GMap2(document.getElementById("map"));
		map.addControl(new GSmallMapControl());
		map.setCenter(new GLatLng(centerLatitude, centerLongitude), startZoom);

		// addMarker(centerLatitude, centerLongitude, 'foo' )
		for(i=0; i<markers.length; i++) {
			addMarker(markers[i].lat, markers[i].lng, markers[i].name);
		}
		map.setZoom(map.getBoundsZoomLevel(bounds));
		map.setCenter(bounds.getCenter());
	}


}

window.onload = init;
window.onunload = GUnload;