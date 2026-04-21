# frozen_string_literal: true

module Views
  module Components
    module Home
      class Hero < Views::Components::Base
        def view_template
          section class: "relative min-h-screen bg-[--color-background]" do
            div class: "flex min-h-screen items-center justify-center -translate-y-6" do
              h1 class: "text-[clamp(5rem,12vw,10rem)] font-light tracking-[0.22em] text-[--color-foreground]" do
                "NEXSPRO"
              end
            end

            div class: "absolute bottom-10 left-1/2 -translate-x-1/2 text-sm text-[--color-foreground]/70" do
              "Scroll ↓"
            end
          end
        end
      end
    end
  end
end