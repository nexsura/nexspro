# frozen_string_literal: true

module Views
  module Pages
    module Library
      class Guides < Views::Base
        def page_title
          "Guides"
        end

        def view_template
          section id: "connect-guides",
            class: "min-h-screen bg-(--background) px-8 py-32" do
            h1 class: "text-(--text-title-size) font-light tracking-tight" do
              plain "Guides"
            end
          end
        end
      end
    end
  end
end
