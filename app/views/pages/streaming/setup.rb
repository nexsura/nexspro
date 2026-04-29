# frozen_string_literal: true

module Views
  module Pages
    module Streaming
      class Setup < Views::Base
        def page_title
          "Setup"
        end

        def view_template
          section id: "connect-setup",
            class: "min-h-screen bg-(--background) px-8 py-32" do
            h1 class: "text-(--text-title-size) font-light tracking-tight" do
              plain "Setup"
            end
          end
        end
      end
    end
  end
end
