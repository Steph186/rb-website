class StoriesController < ApplicationController
skip_before_action :authenticate_user!, only: :index
before_action :set_story, only: [:update, :destroy, :edit]

  def index
    @stories = Story.all.order('updated_at DESC')
    @first_story = Story.first
    @news_picture = Picture.where(category: 'news').first
  end

  def edit
    # User that clicks has to be admin
    if current_user
    # go to edit view
    else
      redirect_to news_path
    end
  end

  def update
    if current_user
      @story.update(story_params)
      redirect_to news_path
    else
      redirect_to news_path
    end
  end

  def create
    if current_user
      @story = Story.new(story_params)
      if @story.save
        redirect_to news_path
      else
        render :new
      end
    else
      redirect_to news_path
    end
  end

  def new
    if current_user
      @story = Story.new
    else
      redirect_to news_path
    end
  end

  def destroy
    if current_user
      @story.destroy
      redirect_to news_path
    else
      redirect_to news_path
    end
  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:title, :content, :photo, :display_picture, :url)
  end
end
