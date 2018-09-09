//= require rails-ujs
//= require_tree .

/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
import 'plugins/flatpickr'
import 'bootstrap';
import { initResponsiveNavbar } from 'components/navbar.js';
import { initFormChanger } from 'components/research_form.js';
import { initUpdateNavbarOnScroll } from 'components/navbar_scroll.js';

console.log('Hello World from Webpacker')

initResponsiveNavbar();
initFormChanger();
initUpdateNavbarOnScroll();

import { initMap } from 'packs/map.js';
initMap();
