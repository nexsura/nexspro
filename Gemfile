source "https://rubygems.org"
ruby file: ".ruby-version"

# Rails Framework
gem "rails", "~> 8.1.3"

# Database
gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0"

# Frontend rendering and assets
gem "phlex-rails", "~> 2.4"
gem "propshaft"
gem "tailwindcss-rails", "~> 4.4"

# Rails infrastructure
gem "mission_control-jobs"
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Boot performance
gem "bootsnap", require: false

# Development and test tools
group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rspec-rails"
  gem "factory_bot_rails"
end

# Development tools
group :development do
  gem "web-console"
end

# Test tools
group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
end
