class CollaboratorsController < ApplicationController
skip_before_action :authenticate_user!, only: :index
  before_action :set_collaborator, only: [:update, :destroy, :edit]

  def index
    ordering = ["PI", "Lab Manager", "Post Doc", "PhD Student", "Research Assistant", "Master Student", "Undergraduate Student"]
    @people = Collaborator.where("alumni = ?", false).sort_by {|s| ordering.index(s.position) }
    @alumni = Collaborator.where("alumni = ?", true).sort_by {|s| ordering.index(s.position) }
  end

  def edit
    # if User, it is the admni --> only unser
    if current_user
    # go to edit view
    else
      redirect_to people_path
    end
  end

  def update
    if current_user
      @collaborator.update(collaborator_params)
      redirect_to people_path
    else
      redirect_to people_path
    end
  end

  def create
    if current_user
      @collaborator = Collaborator.new(collaborator_params)
      if @collaborator.save
        redirect_to people_path
      else
        render :new
      end
    else
      redirect_to people_path
    end
  end

  def new
    if current_user
      @collaborator = Collaborator.new
    else
      redirect_to people_path
    end
  end

  def destroy
    if current_user
      @collaborator.destroy
      redirect_to people_path
    else
      redirect_to people_path
    end
  end

  private

  def set_collaborator
    @collaborator = Collaborator.find(params[:id])
  end

  def collaborator_params
    params.require(:collaborator).permit(:first_name, :last_name, :position, :avatar, :description_one, :description_two, :photo, :alumni, :current_position)
  end
end
