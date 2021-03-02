 var wagon_berlin = [52.506872, 13.3913749]

// initialize the map on the "map" div with a given center and zoom
var map = new L.Map('map', {
  center: new L.LatLng(wagon_berlin[0], wagon_berlin[1]),
  zoom: 15
});

// create a new tile layer
const mapElement = document.getElementById('map');
var api_key = mapElement.dataset.thunderforestApiKey;
var tileUrl = `https://tile.thunderforest.com/cycle/{z}/{x}/{y}.png?apikey=${api_key}`,
layer = new L.TileLayer(tileUrl, {maxZoom: 25});

map.addLayer(layer);

var marker = L.marker(wagon_berlin).addTo(map)

const createMap = () => {
  map.addLayer(layer);
  //add popup
  marker.bindPopup('<h3> Le Wagon Berlin</h3>');
};

export { createMap };
