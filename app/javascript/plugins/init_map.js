// import mapboxgl and CSS
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";

// import mapbox directions and CSS
import MapboxDirections from "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions";
import "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions.css";

// import local JS function
import { locateUser }                  from "./locateUser.js";
import { calculateItinary }            from "./calculateItinary.js";
import { handleMarkers }               from "./handleMarkers.js";

const createMap = () => {
  // selecting the map element from the DOM
  const mapElement = document.getElementById("map");

  // get the API key out of the map element if the map element exist
  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  };

  // defining the coordinates to center the map
  const start = [6.1319, 49.6116]

  // create the map and center it to the start coordinates
  const map = new mapboxgl.Map(
    {
      container: "map",
      style: "mapbox://styles/brieucbadasonic/ckm40wbz631om17qxae17hl37",
      center: start,
      zoom: 4,
      attributionControl: true,
    }
  );

  // add an empty cycling directions to the map
  map.on("load", function () {
    const directions = new MapboxDirections(
      {
        accessToken: mapboxgl.accessToken,
        unit: "metric",
        profile: "mapbox/cycling",
        controls: {
          inputs: false,
          instructions: false,
          profileSwitcher: false
        }
      }
    );

    map.addControl(directions, "top-left");

    // we inject a dataset.view properties from the backend side to tell JS
    // in which view we are so we can call the right function and inject the informations
    // we need on the map
    switch (mapElement.dataset.view) {
      case "trip-new":
        // if we are on the trip#new page --> locate and zoom on user current position
        locateUser(map, directions);
        break;
      case "trip-show":
        // if we are on the trip#show page
        // --> calculate the itinary and update distance and riding time
        calculateItinary(mapElement, directions, map);
        // --> display the garden markers
        handleMarkers(mapElement, map);
        break;
    }
  });

}


export { createMap };
