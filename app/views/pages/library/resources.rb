# frozen_string_literal: true

module Views
  module Pages
    module Library
      class Resources < Views::Base
        def page_title
          "Resources"
        end

        def view_template
          section id: "connect-resources",
            class: "min-h-screen bg-[var(--background)] px-8 py-32" do
            h1 class: "text-[var(--text-title-size)] font-light tracking-tight" do
              plain "Resources"
            end
          end
        end
      end
    end
  end
end
