require "rails_helper"
require "nokogiri"

RSpec.describe "Accessibility baseline", type: :request do
  it "renders semantic landmarks on the home page" do
    get "/"

    document = Nokogiri::HTML(response.body)

    expect(document.at_css("html")["lang"]).to eq("en")
    expect(document.at_css('a[href="#main-content"]')).to be_present
    expect(document.at_css("main#main-content")).to be_present
    expect(document.at_css('nav[aria-label="Main navigation"]')).to be_present
  end

  it "keeps image alt attributes explicit on the home page" do
    get "/"

    images = Nokogiri::HTML(response.body).css("img")

    expect(images).not_to be_empty
    expect(images).to all(satisfy { |image| image.attribute("alt") })
  end
end
