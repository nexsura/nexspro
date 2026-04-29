class StudioController < ApplicationController
  def contact
    render Views::Pages::Studio::Contact.new
  end

  def profile
    render Views::Pages::Studio::Profile.new
  end

  def work
    render Views::Pages::Studio::Work.new
  end
end
