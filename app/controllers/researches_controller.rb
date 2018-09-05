class ResearchesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_research, only: [:update, :destroy, :edit]
  before_action :set_choices, only: [:edit, :new]

  def index
    @researches = Research.where('category = ?', "Research topic")
    @fundings = Research.where('category = ?', "Funding").order('descr_one')
    @image = !Picture.first.photo.file.nil? ? Picture.first.photo : "https://picsum.photos/200/300"
  end

  def edit
    if current_user.id == 1
    # go to edit view
    else
      redirect_to root_path
    end
  end

  def update
    if current_user.id == 1
      @research.update(research_params)
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def create
    if current_user.id == 1
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
    if current_user.id == 1
      @research = Research.new
      @research.category = params["category"]
    else
      redirect_to root_path
    end
  end

  def destroy
    if current_user.id == 1
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
      "Research topic" => ["Book", "Language", "Brain"],
      "Funding" =>["Research Gate", "Twitter", "GitHub", "Google Scholar", "Slack"],
      "Footer link" => ["ERC.jpg", "PRIN.jpg", "MCURIE.jpg"]
    }
  end
end
