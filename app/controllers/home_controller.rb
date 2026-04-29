class HomeController < ApplicationController
  def index
    render Views::Pages::Home::Index.new
  end
end
