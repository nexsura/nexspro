# frozen_string_literal: true

module Views
  module Pages
    module Gaming
      class Games < Views::Base
        def page_title
          "Games"
        end

        def view_template
          section id: "connect-games",
            class: "min-h-screen bg-(--background) px-8 py-32" do
            h1 class: "text-(--text-title-size) font-light tracking-tight" do
              plain "Games"
            end
          end
        end
      end
    end
  end
end
