function initFormChanger() {
  if (document.getElementById("research_category")) {
    let category = document.getElementById("research_category");
    let footer_hide = document.querySelectorAll(".footer_hide");
    let footer_show = document.querySelectorAll(".footer_show");
    hide(footer_show);
    category.addEventListener('click', function() {
      let selected = document.getElementById("research_category");
      let option = selected.options[selected.selectedIndex].value;

      if (option == "Footer link") {
        hide(footer_hide);
        show(footer_show);
      } else if (option == "Funding") {
        show(footer_hide);
        hide(footer_show);
      } else if (option == "Research topic") {
        show(footer_hide);
        hide(footer_show);
      }
    });
  };
}

function hide(array) {
  array.forEach(function(element) {
    element.style.display = "none";
    // element.style.visibility = "hidden";
  });
}

function show(array) {
  array.forEach(function(element) {
    element.style.display = "block";
    // element.style.visibility = "visible";
  });
}

export { initFormChanger };
