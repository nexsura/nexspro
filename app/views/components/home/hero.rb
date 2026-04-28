# frozen_string_literal: true

module Views
  module Components
    module Home
      class Hero < Views::Components::Base
        def view_template
          section class: "relative min-h-screen overflow-hidden bg-(--background)" do
            div class: "flex min-h-screen items-center justify-center -translate-y-8" do
              h1 class: "hero select-none cursor-default text-[clamp(5rem,12vw,10rem)] font-light tracking-[0.22em]" do
                "NEXSPRO"
              end
            end

            scroll_indicator
          end
        end

        private

        def scroll_indicator
          a href: "#studio",
            class: "group absolute bottom-10 left-1/2 flex -translate-x-1/2 select-none cursor-default flex-col items-center gap-2 text-[10px] font-light uppercase tracking-[0.28em] text-(--foreground) transition-colors duration-100 hover:text-(--accent)" do
            span do
              "Scroll"
            end

            img src: "/chevron.svg",
                alt: "",
                class: "animate-chevron h-[11px] w-[18px] opacity-85 transition-opacity duration-100 group-hover:opacity-100"
          end
        end
      end
    end
  end
end
