
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { loadDynamicBannerText } from '../components/init_typewrite';


/////////////////////////////////////////////////////////////////////

// scrollFooter() create function to verify scroll position and thus hide the footer.


///////////////////////////////////////////////////////////////////////



document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  loadDynamicBannerText();
  
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
// require("bootstrap")
require("@fortawesome/fontawesome-free")

import { runSlides } from "./plugins/questions"
import "channels"
import "controllers"

// console.log("Hello from app/javascript/packs/application.js!");

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', () => {
  runSlides()

});
