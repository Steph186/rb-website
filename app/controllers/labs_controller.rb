class LabsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_lab, only: [:update, :destroy, :edit]

  def index
    @labs = Lab.all
    # results = Geocoder.search("Center for Mind/Brain Sciences, University of Trento, Mattarello, Trente")
    @markers = @labs.map do |lab|
      {
        lat: lab.latitude,
        lng: lab.longitude
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def edit
    # User that clicks has to be admin
    if current_user
    # go to edit view
    else
      redirect_to contact_path
    end
  end

  def update
    if current_user.id
      @lab.update(lab_params)
      redirect_to contact_path
    else
      redirect_to contact_path
    end
  end

  def create
    if current_user
      @lab = Lab.new(lab_params)
      if @lab.save
        redirect_to contact_path
      else
        render :new
      end
    else
      redirect_to contact_path
    end
  end

  def new
    if current_user
      @lab = Lab.new
    else
      redirect_to contact_path
    end
  end

  def destroy
    if current_user
      @lab.destroy
      redirect_to contact_path
    else
      redirect_to contact_path
    end
  end

  private

  def set_lab
    @lab = Lab.find(params[:id])
  end

  def lab_params
    params.require(:lab).permit(:title, :university, :street, :zipcode, :city, :country, :email, :phone, :latitude, :longitude)
  end
end
