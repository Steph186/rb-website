class CollaboratorsController < ApplicationController
skip_before_action :authenticate_user!, only: :index
  before_action :set_collaborator, only: [:update, :destroy, :edit]

  def index
    ordering = ["PI", "Lab Manager", "Post Doc", "PhD Student", "Research Assistant", "Master Student", "Undergraduate Student"]
    @people = Collaborator.all.sort_by {|s| ordering.index(s.position) }
  end

  arr = ["3R", "3C", "2C", "4C", "2L", "2R", "3L", "4R", "4L"] # Array to be sorted

tmp_arr = ['L', 'C', 'R']

arr.sort_by {|s| [s[0], tmp_arr.index(s[1])] }
# => ["2L", "2C", "2R", "3L", "3C", "3R", "4L", "4C", "4R"]


  def edit
    # User that clicks has to be admin
    if current_user.id == 1
    # go to edit view
    else
      redirect_to people_path
    end
  end

  def update
    if current_user.id == 1
      @collaborator.update(collaborator_params)
      redirect_to people_path
    else
      redirect_to people_path
    end
  end

  def create
    if current_user.id == 1
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
    if current_user.id == 1
      @collaborator = Collaborator.new
    else
      redirect_to people_path
    end
  end

  def destroy
    if current_user.id == 1
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
    params.require(:collaborator).permit(:first_name, :last_name, :position, :avatar, :description_one, :description_two, :photo)
  end
end
