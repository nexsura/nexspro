# frozen_string_literal: true

module Views
  module Pages
    module Gaming
      class Builds < Views::Base
        def page_title
          "Builds"
        end

        def view_template
          section id: "connect-builds",
            class: "min-h-screen bg-(--background) px-8 py-32" do
            h1 class: "text-(--text-title-size) font-light tracking-tight" do
              plain "Builds"
            end
          end
        end
      end
    end
  end
end
