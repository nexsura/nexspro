# frozen_string_literal: true

module Views
  module Pages
    module Studio
      class Work < Views::Base
        def page_title
          "Work"
        end

        def view_template
          section id: "connect-work",
            class: "min-h-screen bg-(--background) px-8 py-32" do
            h1 class: "text-(--text-title-size) font-light tracking-tight" do
              plain "Work"
            end
          end
        end
      end
    end
  end
end
