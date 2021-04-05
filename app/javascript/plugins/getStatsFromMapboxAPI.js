const callApiToGetDistanceAndTime = () => {

};

const getGardenCoordOnClick = (map, origin) => {
  map.on("click", (event) => {
    let coordinates = `coordinates=${origin.lng},${origin.lat};${event.lngLat["lng"]},${event.lngLat["lat"]}`
    callApiToGetDistanceAndTime(coordinates)
  });
};

export { callApiToGetDistanceAndTime, getGardenCoordOnClick };
