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
});
