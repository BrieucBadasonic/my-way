const locateUser = (map, directions) => {
  // get current locaton from the browser
  navigator.geolocation.getCurrentPosition((pos) => {
    let currentLocation = pos.coords

  // set origin with current user location
    directions.setOrigin([currentLocation.longitude, currentLocation.latitude]);

  // send current location LAT and LNG to the form
  // so we can store the starting point in the DB
    const formStartLatitude = document.getElementById("trip_start_location_latitude")
    formStartLatitude.value = currentLocation.latitude

    const formStartLongitude = document.getElementById("trip_start_location_longitude")
    formStartLongitude.value = currentLocation.longitude

  // fly to (zoom) to current user location
    map.flyTo(
      {
        center: [currentLocation.longitude, currentLocation.latitude],
        zoom: 15,
        bearing: 0,
        speed: 0.5,
        curev: 1
      }
    );
  });
}

export { locateUser };
