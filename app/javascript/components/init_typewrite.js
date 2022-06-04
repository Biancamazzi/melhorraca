import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById("typed-effect");

  if (banner) {
    console.log(banner);
    new Typed(banner, {
      strings: ["", "The best way to find your best buddy"],
      typeSpeed: 50,
      cursorChar: '',
      loop: true
    });
  }
}

export { loadDynamicBannerText };
