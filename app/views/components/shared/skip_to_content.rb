# frozen_string_literal: true

module Views
  module Components
    module Shared
      class SkipToContent < Views::Components::Base
        def view_template
          a href: "#main-content",
            class: "sr-only focus:not-sr-only focus:absolute focus:left-2 focus:top-2" do
            "Skip to main content"
          end
        end
      end
    end
  end
end
