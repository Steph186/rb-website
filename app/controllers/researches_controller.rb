class ResearchesController < ApplicationController
skip_before_action :authenticate_user!, only: :index
  before_action :set_research, only: [:update, :destroy, :edit]

  def index
    @researches = Research.all
    @icons = ["fas fa-atlas icon","far fa-comments icon","fas fa-brain icon"]
  end

  def edit
    # User that clicks has to be admin
    if current_user.id == 1
    # go to edit view
    else
      redirect_to researches_path
    end
  end

  def update
    if current_user.id == 1
      @research.update(research_params)
      redirect_to researches_path
    else
      redirect_to researches_path
    end
  end

  def create
    if current_user.id == 1
      @research = Research.new(research_params)
      if @research.save
        redirect_to researches_path
      else
        render :new
      end
    else
      redirect_to researches_path
    end
  end

  def new
    if current_user.id == 1
      @research = Research.new
    else
      redirect_to researches_path
    end
  end

  def destroy
    if current_user.id == 1
      @research.destroy
      redirect_to researches_path
    else
      redirect_to researches_path
    end
  end

  private

  def set_research
    @research = Research.find(params[:id])
  end

  def research_params
    params.require(:research).permit(:title, :descr_one, :descr_two, :descr_three)
  end
end
