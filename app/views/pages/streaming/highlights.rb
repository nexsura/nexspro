# frozen_string_literal: true

module Views
  module Pages
    module Streaming
      class Highlights < Views::Base
        def page_title
          "Highlights"
        end

        def view_template
          section id: "connect-highlights",
            class: "min-h-screen bg-[var(--background)] px-8 py-32" do
            h1 class: "text-[var(--text-title-size)] font-light tracking-tight" do
              plain "Highlights"
            end
          end
        end
      end
    end
  end
end
