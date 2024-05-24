class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    @bookmark = Bookmark.new
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_show_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
