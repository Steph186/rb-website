function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.nav');
  if (navbar) {
    navbar.style.transition = "all 0.3s";
    if (window.innerWidth >= 50) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= 50) {

          navbar.style.backgroundColor = '#45608d';

        } else {
          navbar.style.backgroundColor = 'transparent';
        }

      })

    }
  }
}

export { initUpdateNavbarOnScroll };
