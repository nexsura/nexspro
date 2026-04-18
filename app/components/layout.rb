# frozen_string_literal: true

class Components::Layout < Components::Base
  def initialize(page_info = {})
    @page_info = page_info
  end

  def view_template(&content)
    doctype

    html do
      head do
        title { @page_info[:title] || "Nexspro"}

        meta name: "viewport", content: "width=device-width, initial-scale=1"
        meta name: "apple-mobile-web-app-capable", content: "yes"
        meta name: "application-name", content: "Nexspro"
        meta name: "mobile-web-app-capable", content: "yes"

        csrf_meta_tags
        csp_meta_tag

        link rel: "icon", href: "/icon.png", type: "image/png"
        link rel: "icon", href: "/icon.svg", type: "image/svg+xml"
        link rel: "apple-touch-icon", href: "/icon.png"

        stylesheet_link_tag :app
      end

      body do
        yield
      end
    end
  end
end