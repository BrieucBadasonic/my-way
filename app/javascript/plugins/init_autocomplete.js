import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('trip_final_destination');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
