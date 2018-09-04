function initResponsiveNavbar() {
  const navbar = document.querySelector('.nav');
  if (navbar) {

    let hamburgerMenu = document.querySelector(".hamburger-container")
    let menu = document.querySelector("#menu")
    let flexbox = document.querySelector("#navbar-elements")
    let logo = document.querySelector("#rb-logo")

    let topBar = document.querySelector(".hamburger li:nth-child(1)");
    let middleBar = document.querySelector(".hamburger li:nth-child(2)");
    let bottomBar = document.querySelector(".hamburger li:nth-child(3)");

    hamburgerMenu.addEventListener('click', function() {
      console.log(hamburgerMenu)

      if (middleBar.classList.contains("rot-45deg") === true) {
        topBar.classList.remove("rot45deg");
        middleBar.classList.remove("rot-45deg");
        bottomBar.classList.remove("hidden");
      } else {
        bottomBar.classList.add("hidden");
        topBar.classList.add("rot45deg");
        middleBar.classList.add("rot-45deg");
      }

      if (menu.style.display === "block") {
        menu.style.display = "none";
        flexbox.style.display = "flex";
        flexbox.style.justifyContent = "space-between";
        flexbox.style.alignItems = "center";
        logo.style.display = "block";
      } else {
        menu.style.display = "block";
        flexbox.style.display = "block";
        flexbox.style.justifyContent = "none";
        flexbox.style.alignItems = "none";
        logo.style.display = "none";
      }
    });
  }
}

export { initResponsiveNavbar };
