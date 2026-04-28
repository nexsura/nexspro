# frozen_string_literal: true

module Views
  module Layouts
    class ApplicationLayout < Views::Components::Base
      def initialize(page_info: {})
        @page_info = page_info
      end

      def view_template(&content)
        doctype

        html lang: "en" do
          head do
            meta charset: "utf-8"
            title { page_title }

            meta name: "viewport", content: "width=device-width, initial-scale=1"
            meta name: "apple-mobile-web-app-capable", content: "yes"
            meta name: "application-name", content: "Nexspro"
            meta name: "mobile-web-app-capable", content: "yes"

            csrf_meta_tags
            csp_meta_tag

            favicon_links
            stylesheet_link_tag "tailwind"
          end

          body class: "layout-body dark" do
            render Views::Components::Shared::SkipToContent.new
            render Views::Components::Navigation::Navbar.new

            main id: "main-content", class: "layout-main", &content
          end
        end
      end

      private

      def page_title
        @page_info[:title].presence || "Nexspro"
      end

      def favicon_links
        link rel: "icon", href: "/icon.svg", type: "image/svg+xml"
        link rel: "icon", href: "/icon.png", type: "image/png"
        link rel: "apple-touch-icon", href: "/icon.png"
        link rel: "manifest", href: "/manifest.json"
      end
    end
  end
end
