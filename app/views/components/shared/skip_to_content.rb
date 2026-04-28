# frozen_string_literal: true

module Views
  module Components
    module Shared
      class SkipToContent < Views::Components::Base
        def view_template
          a href: "#main-content",
            class: "sr-only focus:not-sr-only focus:absolute focus:left-4 focus:top-4 focus:z-[100] focus:rounded-full focus:border focus:border-[var(--border)] focus:bg-[var(--background)] focus:px-4 focus:py-2 focus:text-sm focus:text-[var(--foreground)] focus:shadow-[var(--shadow-nexs-glow)] focus:outline-none" do
            plain "Skip to main content"
          end
        end
      end
    end
  end
end
