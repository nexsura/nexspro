class GamingController < ApplicationController
  def builds
    render Views::Pages::Gaming::Builds.new
  end

  def competition
    render Views::Pages::Gaming::Competition.new
  end

  def games
    render Views::Pages::Gaming::Games.new
  end
end
