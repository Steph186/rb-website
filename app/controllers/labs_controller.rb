class LabsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    results = Geocoder.search("Center for Mind/Brain Sciences, University of Trento, Mattarello, Trente")
    @markers = [
      {
        lat: results.first.coordinates[0],
        lng: results.first.coordinates[1]#,
      }
    ]
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
