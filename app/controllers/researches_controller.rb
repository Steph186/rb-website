class ResearchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :index_join]
  before_action :set_research, only: [:update, :destroy, :edit]
  before_action :set_choices, only: [:edit]

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
      set_choices
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
    case @research.category
    when "Research topic"
      @icons_choices = Research::ICONS_TOPICS
    when "Funding"
      @icons_choices = Research::IMAGES_FUNDING
    when "Footer link"
      @icons_choices = Research::ICONS_LINKS
    else
      @icons_choices = []
    end
  end
end
