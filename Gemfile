source "https://rubygems.org"
ruby file: ".ruby-version"

gem "rails", "~> 8.1.3"
gem "pg", "~> 1.1"
gem "puma", "~> 8.0"

gem "phlex-rails", "~> 2.4"
gem "propshaft", "~> 1.3"
gem "tailwindcss-rails", "~> 4.6"

gem "solid_cache", "~> 1.0"
gem "solid_queue", "~> 1.4"
gem "solid_cable", "~> 4.0"

gem "bootsnap", "~> 1.24", require: false

group :development, :test do
  gem "debug", "~> 1.11", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", "~> 8.0", require: false
  gem "bundler-audit", "~> 0.9", require: false
  gem "rspec-rails", "~> 8.0"
  gem "rubocop-rails-omakase", "~> 1.1", require: false
end

group :development do
  gem "ruby-lsp", "~> 0.26.9"
  gem "web-console", "~> 4.3"
end

# Test tools
group :test do
  gem "capybara", "~> 3.40"
  gem "factory_bot_rails", "~> 6.5"
  gem "selenium-webdriver", "~> 4.44"
  gem "shoulda-matchers", "~> 8.0"
  gem "simplecov", require: false
  gem "rspec_junit_formatter", require: false
end
