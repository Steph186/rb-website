class StaticController < ApplicationController
  skip_before_action :authenticate_user!, only: [:contact]

  def contact
    results = Geocoder.search("Center for Mind/Brain Sciences, University of Trento, Mattarello, Trente")
    @markers = [
      {
        lat: results.first.coordinates[0],
        lng: results.first.coordinates[1]#,
      }
    ]

  end
end

