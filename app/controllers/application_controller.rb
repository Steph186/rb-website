class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, :set_links

  def set_links
  @links = Research.where("category = ?", "Footer link")
  @icons = {"Book"=>"fas fa-atlas icon", "Language"=>"fas fa-comments icon",
    "Brain"=>"fas fa-brain icon", "GitHub"=>"fab fa-github", "Twitter"=>"fab fa-twitter",
    "Slack"=>"fab fa-slack-hash", "Google Scholar"=>"fas fa-graduation-cap", "Research Gate"=>"fab fa-researchgate"}
  end
end
