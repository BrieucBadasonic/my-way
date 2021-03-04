import mapboxgl from "mapbox-gl"; // ES6 import
import "mapbox-gl/dist/mapbox-gl.css"; // Import module's CSS
import MapboxDirections from "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions";
import "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions.css";

const mapElement = document.getElementById("map");
mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach((marker) => bounds.extend([marker.lng, marker.lat]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const updateStats = (distance, hours, minutes) => {
  const statsDistance = document.querySelector(".distance-insert")
  statsDistance.insertAdjacentHTML("beforeend", `<strong>${distance.toFixed(1)} Km</strong>`)

  const statsTime = document.querySelector(".time-insert")
  statsTime.insertAdjacentHTML("beforeend", `<strong>${hours}:${minutes}</strong>`)
};

const callApiToGetDistanceAndTime = (coordinates) => {

  const statsApiUrl = `https://api.mapbox.com/directions/v5/mapbox/cycling?access_token=${mapboxgl.accessToken}`;

  async function postData(url = '', data = {}) {
    const response = await fetch(url, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: data.coordinates
    });
    return response.json()
  }
  postData(statsApiUrl, {coordinates})
    .then(data => {
      const distance = data.routes[0].distance / 1000
      let seconds = data.routes[0].duration

      const hours    = Math.floor(seconds / (60*60));
            seconds -= hours   * (60*60);
      const minutes  = Math.floor(seconds / (60));
            seconds -= minutes * (60);

      updateStats(distance, hours, minutes);
      console.log(typeOf(distance))
    })
  };

const getGardenCoordOnClick = (map, wagonLat, wagonLng) => {
  map.on("click", (event) => {
        // let coordinates = `parseFloat(${wagonLng}),parseFloat(${wagonLat});parseFloat(${event.lngLat["lng"]}),parseFloat(${event.lngLat["lat"]})`
        let coordinates = `coordinates=${wagonLng},${wagonLat};${event.lngLat["lng"]},${event.lngLat["lat"]}`
        // let coordinates = wagonLng,wagonLat;event.lngLat["lng"],event.lngLat["lat"]
        callApiToGetDistanceAndTime(coordinates)
      });
};

const initMapbox = () => {

  // ALWAYS check if selector selected
  if (mapElement) {
    // only build a map if there's a div#map to inject into
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

      let wagonLat = mapElement.dataset.wagonLat
      let wagonLng = mapElement.dataset.wagonLng
      getGardenCoordOnClick(map, wagonLat, wagonLng);

      // updateStats();

    });
  }
};

export { initMapbox }; // ES6 module export
