class StreamingController < ApplicationController
  def highlights
    render Views::Pages::Streaming::Highlights.new
  end

  def live
    render Views::Pages::Streaming::Live.new
  end

  def setup
    render Views::Pages::Streaming::Setup.new
  end
end
