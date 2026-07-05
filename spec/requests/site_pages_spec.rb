require "rails_helper"

RSpec.describe "Site pages", type: :request do
  describe "primary routes" do
    {
      "/" => "NEXSPRO",
      "/studio/work" => "Digital systems, shaped for real use.",
      "/studio/profile" => "Creative Identity",
      "/studio/contact" => "contact@nexspro.com"
    }.each do |path, expected_content|
      it "serves #{path} with expected content" do
        get path

        expect(response).to have_http_status(:ok)
        expect(response.body).to include(expected_content)
      end
    end
  end

  it "serves the health check endpoint" do
    get "/up"

    expect(response).to have_http_status(:ok)
  end

  it "renders the minimum studio work content" do
    get "/studio/work"

    expect(response.body).to include(
      "Digital systems, shaped for real use.",
      "A focused collection of platforms, tools, and personal systems"
    )
  end

  it "renders the minimum studio profile content" do
    get "/studio/profile"

    expect(response.body).to include(
      "Creator",
      "Creative Identity",
      "Technical mastery",
      "Artistic direction",
      "World-class standard"
    )
  end

  it "renders the minimum studio contact content" do
    get "/studio/contact"

    expect(response.body).to include(
      "Projects",
      "Opportunities",
      "Collaboration",
      "contact@nexspro.com"
    )
  end
end
