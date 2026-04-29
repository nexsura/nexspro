Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"

  scope :studio do
    get "work", to: "studio#work", as: :studio_work
    get "profile", to: "studio#profile", as: :studio_profile
    get "contact", to: "studio#contact", as: :studio_contact
  end

  scope :streaming do
    get "highlights", to: "streaming#highlights", as: :streaming_highlights
    get "live", to: "streaming#live", as: :streaming_live
    get "setup", to: "streaming#setup", as: :streaming_setup
  end

  scope :library do
    get "books", to: "library#books", as: :library_books
    get "guides", to: "library#guides", as: :library_guides
    get "resources", to: "library#resources", as: :library_resources
  end

  scope :gaming do
    get "builds", to: "gaming#builds", as: :gaming_builds
    get "competition", to: "gaming#competition", as: :gaming_competition
    get "games", to: "gaming#games", as: :gaming_games
  end

  scope :connect do
    get "community", to: "connect#community", as: :connect_community
    get "socials", to: "connect#socials", as: :connect_socials
  end
end
