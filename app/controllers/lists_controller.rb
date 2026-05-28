class ListsController < ApplicationController
  before_action :set_list, only: [ :show ]
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params_list)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @bookmarks = Bookmark.where(list_id: @list.id)

    # @bookmarks.each do |bookmark|
    #   @movies = Movie.where(id: bookmark.movie_id)
    # end
    @movies = @list.movies
  end

  private

  def params_list
    params.require(:list).permit(:name, :url)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
