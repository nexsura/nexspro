class LibraryController < ApplicationController
  def books
    render Views::Pages::Library::Books.new
  end

  def guides
    render Views::Pages::Library::Guides.new
  end

  def resources
    render Views::Pages::Library::Resources.new
  end
end
