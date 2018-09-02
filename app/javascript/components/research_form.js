function initFormChanger() {
  if (document.getElementById("research_category")) {
    let category = document.getElementById("research_category");
    let first_option = category.options[category.selectedIndex].value;

    let footer_hide = document.querySelectorAll(".footer_hide");
    let footer_show = document.querySelectorAll(".footer_show");
    let research_hide = document.querySelectorAll(".research_hide");
    let funding_hide = document.querySelectorAll(".funding_hide");

    hideShowAll(first_option, footer_hide, footer_show, research_hide, funding_hide);

    category.addEventListener('click', function() {
      let selected = document.getElementById("research_category");
      let option = selected.options[selected.selectedIndex].value;

      hideShowAll(option, footer_hide, footer_show, research_hide, funding_hide)
    });
  };
}

function hide(array) {
  array.forEach(function(element) {
    element.style.display = "none";
  });
}

function show(array) {
  array.forEach(function(element) {
    element.style.display = "block";
  });
}

function hideShowAll(option, footer_hide, footer_show, research_hide, funding_hide) {
    if (option == "Footer link") {
    hide(footer_hide);
    show(footer_show);
  } else if (option == "Funding") {
    show(footer_hide);
    hide(footer_show);
    hide(funding_hide);
  } else if (option == "Research topic") {
    show(footer_hide);
    hide(footer_show);
    hide(research_hide);
  }
}

export { initFormChanger };
