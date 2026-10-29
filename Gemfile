
source "https://rubygems.org"

ruby ">= 4.0.2", "< 4.1.0"

# Rails
gem "rails"
gem "pg"
gem "puma"

# Frontend
gem "phlex-rails"
gem "propshaft"
gem "tailwindcss-rails"

# Rails infrastructure
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Performance
gem "bootsnap", require: false

# Development and testing
group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "rspec-rails"
  gem "rubocop-rails-omakase", require: false
end

# Development
group :development do
  gem "ruby-lsp"
  gem "web-console"
end

# Testing
group :test do
  gem "capybara"
  gem "factory_bot_rails"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "rspec_junit_formatter", require: false
end
