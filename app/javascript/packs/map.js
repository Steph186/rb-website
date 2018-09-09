// app/javascript/packs/map.js
import GMaps from 'gmaps/gmaps.js';

function initMap() {
  const mapElement = document.getElementById('map');
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
    const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
    const markers = JSON.parse(mapElement.dataset.markers);
    map.addMarkers(markers);
    if (markers.length === 0) {
      map.setZoom(16);
      map.setCenter({lat: 46.008938, lng: 11.133872});
    } else if (markers.length === 1) {
      map.setCenter(markers[0].lat, markers[0].lng);
      map.setZoom(16);
    } else {
      map.fitLatLngBounds(markers);
    }
  }
}

export { initMap };
