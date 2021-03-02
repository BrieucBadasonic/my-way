const setMapCenter = (lat = 52.506872, lng = 13.3913749) => {
  const mapElement = document.getElementById('map');
  var map = new L.Map('map', {
    center: new L.LatLng( lat, lng ),
    zoom: 15
  });
  var marker = L.marker([lat, lng]).addTo(map);
  var api_key = mapElement.dataset.thunderforestApiKey;
  var tileUrl = `https://tile.thunderforest.com/cycle/{z}/{x}/{y}.png?apikey=${api_key}`,
  layer = new L.TileLayer(tileUrl, {maxZoom: 25});

  map.addLayer(layer);
  //add popup
  marker.bindPopup('<h3> Le Wagon Berlin</h3>');
}

const createMap = () => {
  const mapElement = document.getElementById('map');
  const new_lat = mapElement.dataset.lat;
  const new_lng = mapElement.dataset.lng;
  if (new_lat && new_lng) {
    setMapCenter(new_lat, new_lng)
  } else {
    setMapCenter()
  }
};

export { createMap };
