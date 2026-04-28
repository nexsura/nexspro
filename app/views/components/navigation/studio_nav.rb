# frozen_string_literal: true

module Views
  module Components
    module Navigation
      class StudioNav < Views::Components::Base
        def view_template
          nav class: "flex items-center justify-center gap-6 text-[11px] font-light uppercase tracking-[0.28em] text-(--foreground-soft)]",
              aria: { label: "Studio navigation" } do
            nav_item "Work", "#studio-work"
            nav_item "Profile", "#studio-profile"
            nav_item "Contact", "#studio-contact"
          end
        end

        private

        def nav_item(label, href)
          a href: href,
            class: "transition-colors duration-300 hover:text-[--accent)]" do
            plain label
          end
        end
      end
    end
  end
end
