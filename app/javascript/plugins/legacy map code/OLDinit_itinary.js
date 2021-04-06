
// async function callItinaryApi() {
//   // selecting the div containing the dataset we want to extract
//   const mapElement = document.getElementById('map');

//   // extracting cyclestreet API key from dataset
//   const cyclestreetApiKey = mapElement.dataset.cyclestreetApiKey;

//   // extracting wagon berlin lat anf lng from dataset
//   const wagonLat = 52.506872;
//   const wagonLng = 13.3913749;

//   // exctracting destination lat and lng from dataset
//   const destLat = mapElement.dataset.lat;
//   const destLng = mapElement.dataset.lng;

//   // building API url
//   const itinaryApi = `https://www.cyclestreets.net/api/journey.json?key=${cyclestreetApiKey}&reporterrors=1&itinerarypoints=${wagonLng},${wagonLat}|${destLng},${destLat}&plan=quietest`

//   if (destLat) {
//   // calling cyclestreet API
//     const response = await fetch(itinaryApi);
//   // parsing API answer
//     const data = await response.json();

//   // accessing the itinary coordinates and storing it in a const
//     const itinaryCoordinates = (data.marker[0].["@attributes"].coordinates)
//     console.log(itinaryCoordinates)
//   }

// }


// export { callItinaryApi }
