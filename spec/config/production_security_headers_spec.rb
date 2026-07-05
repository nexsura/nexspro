require "rails_helper"

RSpec.describe "Production security configuration" do
  let(:production_config) { Rails.root.join("config/environments/production.rb").read }

  it "forces SSL and HSTS in production" do
    expect(production_config).to include("config.assume_ssl = true")
    expect(production_config).to include("config.force_ssl = true")
    expect(production_config).to include("preload: true")
  end

  it "declares the required browser security headers" do
    expect(production_config).to include(
      '"X-Frame-Options" => "DENY"',
      '"X-Content-Type-Options" => "nosniff"',
      '"Referrer-Policy" => "strict-origin-when-cross-origin"',
      '"Permissions-Policy" =>'
    )
  end

  it "keeps the health check excluded from SSL redirect and host authorization" do
    expect(production_config).to include('request.path == "/up"')
    expect(production_config).to include("config.host_authorization")
  end
end
