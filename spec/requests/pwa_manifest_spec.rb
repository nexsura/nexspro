require "rails_helper"

RSpec.describe "PWA manifest", type: :request do
  it "serves an installable JSON manifest" do
    get "/manifest.json"

    expect(response).to have_http_status(:ok)
    expect(response.media_type).to eq("application/json")

    manifest = JSON.parse(response.body)

    expect(manifest).to include(
      "name" => "Nexspro",
      "short_name" => "Nexspro",
      "id" => "/",
      "start_url" => "/",
      "scope" => "/",
      "display" => "standalone",
      "theme_color" => "#58e1d4",
      "background_color" => "#000000"
    )
    expect(manifest.fetch("icons")).to include(
      include(
        "src" => "/icon.png",
        "type" => "image/png",
        "sizes" => "512x512",
        "purpose" => "maskable"
      )
    )
  end
end
