// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { createMap }           from "../plugins/init_map.js";

import { initAutocomplete }    from "../plugins/init_autocomplete.js";

import { initStarRating }      from '../plugins/init_star_rating';

import { initChatroomCable }   from '../channels/chatroom_channel';

// import { finishrideButton } from "../plugins/finishride_button";

document.addEventListener('turbolinks:load', () => {
  initStarRating();
  createMap();
  initAutocomplete();
  initChatroomCable();

  // finishrideButton();
});

import "controllers"



