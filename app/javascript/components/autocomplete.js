function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    let labStreet = document.getElementById('lab_street');
    if (labStreet) {
      // var labAddress = document.getElementById('lab_street');
      let labStreet = document.getElementById('lab_street');
      let labZipcode = document.getElementById('lab_zipcode');
      let labCity = document.getElementById('lab_city');
      let labCountry = document.getElementById('lab_country');

      console.log(labStreet)
      console.log(labZipcode)
      console.log(labCity)
      console.log(labCountry)


      var fillForm = function(place) {
        var fullAdress = "";

       for (var i = 0; i < place.address_components.length; i++) {
          var addressType = place.address_components[i].types[0];
          var value = place.address_components[i].long_name;

          if (addressType === "country") { labCountry.value = value; }
          if (addressType === "locality") { labCity.value = value; }
          if (addressType === "postal_code") { labZipcode.value = value; }

          if (addressType === "street_number") { fullAdress = fullAdress + value }
          if (addressType === "route") { fullAdress = fullAdress + " " + value }
        }

        labStreet.value = fullAdress;
      };

      if (labStreet) {
        var autocomplete = new google.maps.places.Autocomplete(labStreet, { types: [ 'geocode' ] });

        autocomplete.addListener('place_changed', function () {
          var place = autocomplete.getPlace();
          fillForm(place);
        });

        google.maps.event.addDomListener(labStreet, 'keydown', function(e) {
          if (e.key === "Enter") {
            e.preventDefault(); // Do not submit the form on Enter.
          }
        });
      }
    }
  });
}

export { autocomplete };
