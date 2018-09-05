class StaticController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :news]

  def home
    @researches = Research.where('category = ?', "Research topic")
  end

  def contact
    @image = !Picture.last.photo.file.nil? ? Picture.last.photo : "https://picsum.photos/200/300"
  end

  def news
  end
end
