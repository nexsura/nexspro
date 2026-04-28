class HomeController < ApplicationController
  layout false

  def index
    render Views::Pages::Home::Index.new
  end
end
