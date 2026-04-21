# frozen_string_literal: true

module Views
  module Components
    module Navigation
      class Navbar < Views::Components::Base
        def view_template
          header class: "absolute inset-x-0 top-0 z-50 px-8 py-6" do
            nav class: "mx-auto flex max-w-[1600px] items-center justify-end" do

              ul class: "flex items-center gap-10 text-[13px] text-[--color-foreground]/80" do
                nav_link("Studio", "#")
                nav_link("Streaming", "#")
                nav_link("Gaming", "#")
                nav_link("Library", "#")
                nav_link("Socials", "#")

                li do
                  button type: "button",
                    class: "transition-opacity duration-200 hover:opacity-50 text-[--color-foreground]" do
                    "◐"
                  end
                end
              end

            end
          end
        end

        private

        def nav_link(label, href)
          li do
            a href: href,
              class: "transition-opacity duration-200 hover:opacity-50" do
              label
            end
          end
        end
      end
    end
  end
end