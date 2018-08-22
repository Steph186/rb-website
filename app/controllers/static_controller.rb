class StaticController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :news]

  def home
    @researches = Research.all
    @icons = ["fas fa-atlas icon","far fa-comments icon","fas fa-brain icon"]
  end

  def contact
  end

  def news
  end
end
