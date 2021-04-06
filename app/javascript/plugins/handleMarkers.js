// import mapboxgl and CSS
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";

// center to map to the markers
const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach((marker) => bounds.extend([marker.lng, marker.lat]));
  map.fitBounds(bounds, { padding: 30, maxZoom: 13, duration: 5000 });
};

const handleMarkers = (mapElement, map) => {
  // get the markers from the dataset
  const markers = JSON.parse(mapElement.dataset.markers);

  // iterate thru the markers object and creates mapbox markers
  markers.forEach((marker) => {
    var popupOffsets = {
      'top': [0, 0],
      'left': [-300],
    };

    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    // Create a HTML element for your custom marker
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'cover';
    element.style.width = '25px';
    element.style.height = '25px';


    // Pass the element as an argument to the new marker
    new mapboxgl.Marker(element)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(map);
  });

  fitMapToMarkers(map, markers);
}

export { handleMarkers };
