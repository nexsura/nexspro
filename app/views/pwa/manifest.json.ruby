manifest = {
  "name" => "Nexspro",
  "short_name" => "Nexspro",
  "description" => "A Ruby-first digital platform built with Rails, Phlex, and a disciplined interface system.",
  "id" => "/",
  "start_url" => "/",
  "scope" => "/",
  "lang" => "en",
  "dir" => "ltr",
  "display" => "standalone",
  "display_override" => [
    "window-controls-overlay",
    "standalone",
    "minimal-ui",
    "browser"
  ],
  "orientation" => "any",
  "theme_color" => "#58e1d4",
  "background_color" => "#000000",
  "categories" => [
    "developer",
    "productivity",
    "utilities"
  ],
  "prefer_related_applications" => false,
  "icons" => [
    {
      "src" => "/icon.svg",
      "type" => "image/svg+xml",
      "sizes" => "any",
      "purpose" => "any"
    },
    {
      "src" => "/icon.png",
      "type" => "image/png",
      "sizes" => "512x512",
      "purpose" => "any"
    },
    {
      "src" => "/icon.png",
      "type" => "image/png",
      "sizes" => "512x512",
      "purpose" => "maskable"
    }
  ],
  "shortcuts" => [
    {
      "name" => "Work",
      "short_name" => "Work",
      "description" => "Open the studio work index.",
      "url" => "/studio/work",
      "icons" => [
        {
          "src" => "/icon.png",
          "type" => "image/png",
          "sizes" => "512x512"
        }
      ]
    },
    {
      "name" => "Profile",
      "short_name" => "Profile",
      "description" => "Open the studio profile.",
      "url" => "/studio/profile",
      "icons" => [
        {
          "src" => "/icon.png",
          "type" => "image/png",
          "sizes" => "512x512"
        }
      ]
    },
    {
      "name" => "Contact",
      "short_name" => "Contact",
      "description" => "Open the studio contact page.",
      "url" => "/studio/contact",
      "icons" => [
        {
          "src" => "/icon.png",
          "type" => "image/png",
          "sizes" => "512x512"
        }
      ]
    }
  ]
}

manifest.to_json
