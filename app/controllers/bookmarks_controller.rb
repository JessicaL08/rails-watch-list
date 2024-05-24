class BookmarksController < ApplicationController
  def new
# @bookmark = Bookmarks.new
@movie = Movies.all
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to lists_show_path(@list)

  end

  def delete
  end

  private

  def bookmark_params
    params.require(:movies).permit(:lists)
  end
end
