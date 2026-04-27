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
                studio_item
                streaming_item
                gaming_item
                library_item
                connect_item

                li class: "ml-0.5" do
                  render Views::Components::Theme::Toggle.new(dark: true)
                end
              end
            end
          end
        end

        private

        def studio_item
          dropdown_item("Studio", "#studio", width: "min-w-32") do
            sub_nav_item "Work", "#studio-work"
            sub_nav_item "Profile", "#studio-profile"
            sub_nav_item "Contact", "#studio-contact"
          end
        end

        def streaming_item
          dropdown_item("Streaming", "#streaming", width: "min-w-36") do
            sub_nav_item "Live", "#streaming-live"
            sub_nav_item "Setup", "#streaming-setup"
            sub_nav_item "Highlights", "#streaming-highlights"
          end
        end

        def gaming_item
          dropdown_item("Gaming", "#gaming", width: "min-w-40") do
            sub_nav_item "Games", "#gaming-games"
            sub_nav_item "Builds", "#gaming-builds"
            sub_nav_item "Competition", "#gaming-competition"
          end
        end

        def library_item
          dropdown_item("Library", "#library", width: "min-w-40") do
            sub_nav_item "Books", "#library-books"
            sub_nav_item "Guides", "#library-guides"
            sub_nav_item "Resources", "#library-resources"
          end
        end

        def connect_item
          dropdown_item("Connect", "#connect", width: "min-w-40") do
            sub_nav_item "Socials", "#connect-socials"
            sub_nav_item "Community", "#connect-community"
          end
        end

        def dropdown_item(label, href, width:)
          li class: "group relative" do
            a href: href, class: nav_link_class do
              plain label

              span class: "absolute -bottom-1 left-0 h-px w-0 bg-(--accent-line)] transition-all duration-300 group-hover:w-full",
                   aria: { hidden: true }
            end

            div class: "#{dropdown_class} #{width}" do
              yield
            end
          end
        end

        def sub_nav_item(label, href)
          a href: href, class: sub_nav_link_class do
            plain label
          end
        end

        def nav_link_class
          "relative inline-flex items-center py-1 text-[12px] font-light uppercase tracking-[0.28em] text-[var(--foreground-soft)] transition-all duration-300 hover:text-[var(--accent)]"
        end

        def dropdown_class
          "pointer-events-none absolute left-1/2 top-full flex -translate-x-1/2 translate-y-1 flex-col items-center gap-3 pt-4 opacity-0 transition-all duration-300 ease-[var(--ease-soft)] group-hover:pointer-events-auto group-hover:translate-y-0 group-hover:opacity-100 group-focus-within:pointer-events-auto group-focus-within:translate-y-0 group-focus-within:opacity-100"
        end

        def sub_nav_link_class
          "whitespace-nowrap text-[10px] font-light uppercase tracking-[0.24em] text-[var(--foreground-soft)] transition-colors duration-300 hover:text-[var(--accent)]"
        end
      end
    end
  end
end