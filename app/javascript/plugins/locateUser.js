const locateUser = (map, directions) => {
  navigator.geolocation.getCurrentPosition((pos) => {
    let currentLocation = pos.coords

    directions.setOrigin([currentLocation.longitude, currentLocation.latitude]);

    const formStartLatitude = document.getElementById("trip_start_location_latitude")
    formStartLatitude.value = currentLocation.latitude

    const formStartLongitude = document.getElementById("trip_start_location_longitude")
    formStartLongitude.value = currentLocation.longitude

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
