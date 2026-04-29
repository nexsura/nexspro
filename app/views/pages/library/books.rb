# frozen_string_literal: true

module Views
  module Pages
    module Library
      class Books < Views::Base
        def page_title
          "Books"
        end

        def view_template
          section id: "connect-books",
            class: "min-h-screen bg-(--background) px-8 py-32" do
            h1 class: "text-(--text-title-size) font-light tracking-tight" do
              plain "Books"
            end
          end
        end
      end
    end
  end
end
