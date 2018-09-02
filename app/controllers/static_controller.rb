class StaticController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :news]

  def home
    @researches = Research.where('category = ?', "Research topic")
  end

  def contact
  end

  def news
  end
end
