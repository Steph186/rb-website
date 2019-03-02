class PicturesController < ApplicationController
before_action :set_picture, only: [:update, :edit]
  def edit
    # User that clicks has to be admin
    if current_user
    # go to edit view
    else
      redirect_to root_path
    end
  end

  def update
    if current_user
      @picture.update(picture_params)
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:page, :photo, :focus_picture)
  end
end
