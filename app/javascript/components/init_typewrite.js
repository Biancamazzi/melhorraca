import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById("typed-effect");
  const banner02 = document.getElementById("typed-effect02");

  if (banner) {
    new Typed(banner, {
      strings: ["", "The best way to find your best buddy"],
      typeSpeed: 50,
      cursorChar: '',
      loop: true
    });
  }

  if (banner02) {
    new Typed(banner02, {
      strings: ["", "Find your best buddy"],
      typeSpeed: 50,
      cursorChar: '',
      loop: true
    });
  }
}

export { loadDynamicBannerText };
