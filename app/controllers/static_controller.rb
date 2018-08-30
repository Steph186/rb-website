class StaticController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :news]

  def home
    @researches = Research.where('category = ?', "Research topic")
    @icons = {"Book"=>"fas fa-atlas icon", "Language"=>"fas fa-comments icon", "Brain"=>"fas fa-brain icon", "Poop"=>"fas fa-poop", "Cannabis"=>"fas fa-cannabis"}
  end

  def contact
  end

  def news
  end
end
