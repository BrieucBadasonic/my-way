import mapboxgl from "mapbox-gl"; // ES6 import
import "mapbox-gl/dist/mapbox-gl.css"; // Import module's CSS
import MapboxDirections from "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions";
import "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions.css";

import { Controller } from "stimulus"
import { map } from "../plugins/init_mapbox.js";

export default class extends Controller {
  static targets = [ "icon", "segmentmap", "segmentcontainer" ]

  connect() {
    // console.log(mapSegment, "segment")
  };

  collapsabledown() {
    this.iconTarget.classList.toggle("fa-chevron-down");
    this.iconTarget.classList.toggle("fa-chevron-up");
    this.segmentcontainerTarget.classList.toggle("closed");
    if (this.segmentmapTarget.style.height === "50vh") {
      this.segmentmapTarget.style.height = "95vh";
    } else {
      this.segmentmapTarget.style.height = "50vh";
    }
    map.resize();
  };

  // collapsableup() {
  //   this.iconTarget.classList.add("fa-chevron-down");
  //   this.iconTarget.classList.remove("fa-chevron-up");
  //   this.segmentcontainerTarget.classList.remove("closed");
  //   this.segmentmapTarget.style.height = "50vh";
  //   map.resize();
  // };
}

