class StaticController < ApplicationController
  skip_before_action :authenticate_user!, only: [:contact]

  def contact
    @image = !Picture.last.photo.file.nil? ? Picture.last.photo : "https://picsum.photos/200/300"
  end
end
