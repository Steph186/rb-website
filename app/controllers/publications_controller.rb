class PublicationsController < ApplicationController
skip_before_action :authenticate_user!, only: :index
before_action :set_publication, only: [:update, :destroy, :edit]

  def index
    @publications = Publication.all.order('year DESC')
  end

  def edit
    # User has to be admin, only user
    if current_user
    # go to edit view
    else
      redirect_to publications_path
    end
  end

  def update
    if current_user
      @publication.update(publication_params)
      redirect_to publications_path
    else
      redirect_to publications_path
    end
  end

  def create
    if current_user
      @publication = Publication.new(publication_params)
      if @publication.save
        redirect_to publications_path
      else
        render :new
      end
    else
      redirect_to publications_path
    end
  end

  def new
    if current_user
      @publication = Publication.new
    else
      redirect_to publications_path
    end
  end

  def destroy
    if current_user
      @publication.destroy
      redirect_to publications_path
    else
      redirect_to publications_path
    end
  end

  private

  def set_publication
    @publication = Publication.find(params[:id])
  end

  def publication_params
    params.require(:publication).permit(:authors, :year, :title, :journal, :url)
  end
end
