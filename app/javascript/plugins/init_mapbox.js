import mapboxgl from "mapbox-gl"; // ES6 import
import "mapbox-gl/dist/mapbox-gl.css"; // Import module's CSS
import MapboxDirections from "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions";
import "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions.css";

// selecting the map element
const mapElement = document.getElementById("map");
// get the API key out of the map element
if (mapElement) {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
};


const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach((marker) => bounds.extend([marker.lng, marker.lat]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const updateStats = (distance, hours, minutes) => {
  const statsDistance = document.querySelector(".distance-insert")
  statsDistance.innerText = `${distance.toFixed(1)} km`;

  const statsTime = document.querySelector(".time-insert")
  statsTime.innerText = `${hours}hrs ${minutes}mins`
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

      let minutes  = Math.floor(seconds / (60));
            seconds -= minutes * (60);
      minutes = minutes > 9 ? minutes : '0' + minutes;

      updateStats(distance, hours, minutes);
    })
};

const getGardenCoordOnClick = (map, origin) => {
  map.on("click", (event) => {
        let coordinates = `coordinates=${origin.lng},${origin.lat};${event.lngLat["lng"]},${event.lngLat["lat"]}`
        callApiToGetDistanceAndTime(coordinates)
  });
};


const initMapbox = () => {

  if (mapElement) {
    const map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/mapbox/streets-v10",
      // center: [13.404954, 52.520008],
      zoom: 15,
      // attributionControl: false,
    });
console.log("create map")
    // only build a map if there's a div#map to inject into


    map.on("load", function () {
console.log("load")
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

      map.addControl(directions, "top-left");
      // check on which view we are
      const view = mapElement.dataset.view


      if (view === "trip-new") {
console.log("trip#new")
        navigator.geolocation.getCurrentPosition((pos) => {
          let currentLocation = pos.coords
console.log(currentLocation)
          directions.setOrigin([currentLocation.longitude, currentLocation.latitude]);

          const formStartLatitude = document.getElementById("trip_start_location_latitude")
          formStartLatitude.value = currentLocation.latitude

          const formStartLongitude = document.getElementById("trip_start_location_longitude")
          formStartLongitude.value = currentLocation.longitude

        }, (error) => {
          console.log("this is an error")
        });
      }


      if (view === "trip-show") {
console.log("trip#show")
        let origin = JSON.parse(mapElement.dataset.origin)
        let destination  = JSON.parse(mapElement.dataset.destination)
        if (origin || destination) {
            directions.setOrigin([origin.lng, origin.lat]);
            directions.setDestination([destination.lng, destination.lat]);
            let coordinates = `coordinates=${origin.lng},${origin.lat};${destination.lng},${destination.lat}`
            callApiToGetDistanceAndTime(coordinates)
            getGardenCoordOnClick(map, origin);
        };
      }

      if (view === "segment-show") {
console.log("segment#show")
        let origin = JSON.parse(mapElement.dataset.origin)
        let destination  = JSON.parse(mapElement.dataset.destination)

        if (origin || destination) {
            directions.setOrigin([origin.lng, origin.lat]);
            directions.setDestination([destination.lng, destination.lat]);
            let coordinates = `coordinates=${origin.lng},${origin.lat};${destination.lng},${destination.lat}`
            callApiToGetDistanceAndTime(coordinates)
         }
      };


      if (mapElement.dataset.setMarkers === "true") {
console.log("set markers")
        const markers = JSON.parse(mapElement.dataset.markers);
        // markers.forEach((marker) => {
        //   new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(map);
        // });


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

        // fitMapToMarkers(map, markers);




      }
    });
  }
console.log("loaded")
};

export { initMapbox }; // ES6 module export

