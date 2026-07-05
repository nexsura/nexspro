require "rails_helper"

RSpec.describe "Rails boot" do
  it "eager loads the application" do
    expect { Rails.application.eager_load! }.not_to raise_error
  end
end
