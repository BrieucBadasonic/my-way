
//   // create marker from array of markers
// const createMarker = (arrayOfMarkers, map) => {
//   arrayOfMarkers.forEach(function(element) {
//     var marker  = L.marker([`${element[0]}`, `${element[1]}`]).addTo(map);
//     marker.bindPopup(`<h5> ${element[2]} </h5>`);
//     });
// };


//   //function setMapCenter with le wagon lat and lng as default argument
// const setMapCenter = (lat = 52.506872, lng = 13.3913749, arrayOfMarkers = [[52.506872, 13.3913749, "Le Wagon"]]) => {
//   // store the DIV map in mapElement variable
//   const mapElement = document.getElementById('map');
//   // create an instance of map with options (leaflet method)
//   var map = new L.Map('map', {
//     center: new L.LatLng(lat, lng),
//     zoom: 15
//   });

//   // create a marker and add it to the map
//   // var marker_wagon = L.marker([52.506872, 13.3913749]).addTo(map);
//   // var marker_dest  = L.marker([lat, lng]).addTo(map);
//   createMarker(arrayOfMarkers, map)

//   // center the map to array of markers
//   var bounds = new L.LatLngBounds(arrayOfMarkers);
//   map.fitBounds(bounds);

//   // extract API thuderforest key from the mapElement
//   var api_key = mapElement.dataset.thunderforestApiKey;

//   // build the API url
//   var tileUrl = `https://tile.thunderforest.com/cycle/{z}/{x}/{y}.png?apikey=${api_key}`,

//   // create a layer by calling the API on the TileLayer method (leaflet method)
//   layer = new L.TileLayer(tileUrl, {maxZoom: 17});

//   // add the layer to the map
//   map.addLayer(layer);

//   //add popup
//   // marker_wagon.bindPopup('<h3> Le Wagon Berlin</h3>');
//   // marker_dest.bindPopup('<h3> Final Destination</h3>');
// }

//   // function createMap
//   //
// const createMap = () => {

//   // store the DIV map in mapElement variable
//   const mapElement = document.getElementById('map');

//   // extract lat of final destination from html dataset
//   const new_lat = mapElement.dataset.lat;

//   // extract lng of final destination from html dataset
//   const new_lng = mapElement.dataset.lng;

//   // condition
//   // if we found the final destination coord from the dataset
//   // --> create the map with the final destination coord
//   if (new_lat && new_lng) {
//     var arrayOfMarkers = [[52.506872, 13.3913749, "Le Wagon"], [new_lat, new_lng, "Final Destination"]]
//     setMapCenter(new_lat, new_lng, arrayOfMarkers)


//   // if we don't have final destination coord
//   // --> create the map with le wagon lat and lng defaut value
//   } else {
//     setMapCenter()

//   }
// };

// export { createMap };
