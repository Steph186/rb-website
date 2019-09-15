class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, :set_links

  def set_links
  @links = Research.where("category = ?", "Footer link")
  @icons = {"1 Book"=>"fas fa-atlas icon", "2 Language"=>"fas fa-comments icon",
    "3 Brain"=>"fas fa-brain icon", "Cannabis"=>"fas fa-cannabis", "GitHub"=>"fab fa-github", "Twitter"=>"fab fa-twitter",
    "Slack"=>"fab fa-slack-hash", "Google Scholar"=>"fas fa-graduation-cap", "Research Gate"=>"fab fa-researchgate"}
  end
end