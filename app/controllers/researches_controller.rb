class ResearchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :index_join]
  before_action :set_research, only: [:update, :destroy, :edit]
  before_action :set_choices, only: [:edit, :new]

  def index
    @researches = Research.where('category = ?', "Research topic").order('icon')
    @fundings = Research.where('category = ?', "Funding").order('descr_one')
  end

  def index_join
    @pic = Picture.where(page: "Join the lab").first
    @join_lab = Research.where('category = ?', "Join the lab").first
  end

  def edit
    if current_user
    # go to edit view
    else
      redirect_to root_path
    end
  end

  def update
    if current_user
      @research.update(research_params)
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def create
    if current_user
      @research = Research.new(research_params)
      if @research.save
        redirect_to root_path
      else
        render :new
      end
    else
      redirect_to root_path
    end
  end

  def new
    if current_user
      @research = Research.new
      @research.category = params["category"]
    else
      redirect_to root_path
    end
  end

  def destroy
    if current_user
      @research.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def set_research
    @research = Research.find(params[:id])
  end

  def research_params
    params.require(:research).permit(:title, :descr_one, :descr_two, :descr_three, :category, :icon)
  end

  def set_choices
    @icons_choices = {
      "Research topic" => ["1 Book", "2 Language", "3 Brain"],
      "Funding" =>["ERC.jpg", "PRIN.jpg", "MCURIE.jpg"],
      "Footer link" => ["Research Gate", "Twitter", "GitHub", "Google Scholar", "Slack"]
    }
  end
end
