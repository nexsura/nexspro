# frozen_string_literal: true

module Views
  module Pages
    module Gaming
      class Competition < Views::Base
        def page_title
          "Competition"
        end

        def view_template
          section id: "connect-competition",
            class: "min-h-screen bg-[var(--background)] px-8 py-32" do
            h1 class: "text-[var(--text-title-size)] font-light tracking-tight" do
              plain "Competition"
            end
          end
        end
      end
    end
  end
end
