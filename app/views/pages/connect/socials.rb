# frozen_string_literal: true

module Views
  module Pages
    module Connect
      class Socials < Views::Base
        def page_title
          "Socials"
        end

        def view_template
          section id: "connect-socials",
            class: "min-h-screen bg-(--background) px-8 py-32" do
            h1 class: "text-(--text-title-size) font-light tracking-tight" do
              plain "Socials"
            end
          end
        end
      end
    end
  end
end
