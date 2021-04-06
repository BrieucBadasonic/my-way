// import mapboxgl and CSS
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";

// we update the disatnce and time stats with the API answer
const updateStats = (distance, hours, minutes) => {
  const statsDistance = document.querySelector(".distance-insert")
  statsDistance.innerText = `${distance.toFixed(1)} km`;

  const statsTime = document.querySelector(".time-insert")
  statsTime.innerText = `${hours}hrs ${minutes}mins`
};

// we call the mapbox API to get distance and riding time
const callApiToGetDistanceAndTime = (coordinates) => {
  const statsApiUrl = `https://api.mapbox.com/directions/v5/mapbox/cycling?access_token=${mapboxgl.accessToken}`;

  // we define a async function to call mapbox direction API
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

  // we call the mapbox direction API with the URL and
  // the coordinates of the initary
  postData(statsApiUrl, {coordinates})
    .then(data => {
      // extract and convert API distance from meter to km
      const distance = data.routes[0].distance / 1000

      // extract time from API answer in seconds
      let seconds = data.routes[0].duration

      // extract hour
      const hours    = Math.floor(seconds / (60*60));
      // remove hour from the API answer in seconds
      seconds -= hours   * (60*60);
      // extract minutes
      let minutes  = Math.floor(seconds / (60));
      // remove minutes from API answer in seconds
      seconds -= minutes * (60);
      // add 0 in front of minutes if minutes is 1 number
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

export { callApiToGetDistanceAndTime, getGardenCoordOnClick };
