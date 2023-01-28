class ListsController < ApplicationController

  def index
    @list = List.all
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.new
  end

   private

  def list_params
    params.require(:list).permit(:name)
  end
end
