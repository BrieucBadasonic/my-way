import { callApiToGetDistanceAndTime } from "./getStatsFromMapboxAPI.js";
import { getGardenCoordOnClick }       from "./getStatsFromMapboxAPI.js";

const calculateItinary = (mapElement, directions, map) => {
  // get origin and destination coordinates from dataset
  let origin = JSON.parse(mapElement.dataset.origin);
  let destination  = JSON.parse(mapElement.dataset.destination);

  // if we have and origin and a destination
  // we create a coordinates variable
  if (origin && destination) {
    directions.setOrigin([origin.lng, origin.lat]);
    directions.setDestination([destination.lng, destination.lat]);

    let coordinates = `coordinates=${origin.lng},${origin.lat};${destination.lng},${destination.lat}`
    callApiToGetDistanceAndTime(coordinates);
    getGardenCoordOnClick(map, origin);
  };
}

export { calculateItinary };
