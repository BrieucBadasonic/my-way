import mapboxgl from "mapbox-gl"; // ES6 import
import "mapbox-gl/dist/mapbox-gl.css"; // Import module's CSS
import MapboxDirections from "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions";
import "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions.css";

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach((marker) => bounds.extend([marker.lng, marker.lat]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById("map");

  // ALWAYS check if selector selected
  if (mapElement) {
    console.log("Selected the map element!");
    // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/mapbox/streets-v10",
    });

    map.on("load", function () {
      const directions = new MapboxDirections({
        accessToken: mapboxgl.accessToken,
        unit: "metric",
        profile: "mapbox/cycling",
        controls: {
          inputs: false,
          instructions: false,
          profileSwitcher: false
        }
      });

      console.log(directions);

      map.addControl(directions, "top-left");

      let finalDestination = mapElement.dataset.finalDestination
      if (finalDestination) {
        directions.setOrigin("Rudi-Dutschke-Straße 26, 10969 Berlin");
        directions.setDestination(finalDestination);
      };

      const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
        new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(map);
      });

      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

        // Create a HTML element for your custom marker
        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url('${marker.image_url}')`;
        element.style.backgroundSize = 'contain';
        element.style.width = '25px';
        element.style.height = '25px';

        // Pass the element as an argument to the new marker
        new mapboxgl.Marker(element)
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(map);
      });

      fitMapToMarkers(map, markers);
    });
  }
};

export { initMapbox }; // ES6 module export
