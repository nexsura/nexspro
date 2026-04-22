# frozen_string_literal: true

module Views
  module Components
    module Navigation
      class Navbar < Views::Components::Base
        def view_template
          header class: "absolute inset-x-0 top-0 z-50 px-8 py-6 lg:px-10" do
            nav class: "flex w-full items-center justify-end",
              aria: { label: "Main navigation" } do

              ul class: "flex items-center gap-6 lg:gap-8" do
                nav_item "Studio", "#studio"
                nav_item "Streaming", "#streaming"
                nav_item "Gaming", "#gaming"
                nav_item "Library", "#library"
                nav_item "Connect", "#connect"

                li class: "ml-0.5" do
                  render Views::Components::Theme::Toggle.new(dark: true)
                end
              end

            end
          end
        end

        private

        def nav_item(label, href)
          li do
          a href: href,
            class: "group relative inline-flex items-center py-1 text-[12px] font-light uppercase tracking-[0.28em] text-[var(--foreground-soft)] transition-all duration-300 hover:text-[var(--accent)]" do
          plain label

          span class: "absolute -bottom-1 left-0 h-px w-0 bg-[var(--accent-line)] transition-all duration-300 group-hover:w-full",
               aria: { hidden: true }
            end
          end
        end
      end
    end
  end
end