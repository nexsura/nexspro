class ConnectController < ApplicationController
  def community
    render Views::Pages::Connect::Community.new
  end

  def socials
    render Views::Pages::Connect::Socials.new
  end
end
