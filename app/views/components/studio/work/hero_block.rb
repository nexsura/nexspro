# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Work
        class HeroBlock < Views::Components::Base
          def view_template
            section id: "studio-work",
              class: "relative flex min-h-[calc(100vh-1.5rem)] overflow-hidden bg-(--background) px-8 pt-36 lg:min-h-[calc(100vh-1rem)] lg:px-10 lg:pt-40" do
              div class: "mx-auto grid w-full max-w-[96rem] grid-rows-[auto_1fr]" do
                div class: "pt-40 text-center lg:pt-44" do
                  div class: "mx-auto inline-block max-w-full" do
                    h1 class: "whitespace-nowrap text-[clamp(0.82rem,4.25vw,4.65rem)] font-light leading-[0.96] tracking-normal text-(--foreground)" do
                      plain "Digital systems, shaped for real use."
                    end

                    div class: "mt-9 flex w-full items-center justify-between",
                      aria: { hidden: true } do
                      div class: "h-px w-[36%] bg-[linear-gradient(90deg,rgb(88_225_212_/_0.72),rgb(255_255_255_/_0.1),transparent)]"
                      div class: "h-px w-[36%] bg-[linear-gradient(90deg,transparent,rgb(255_255_255_/_0.1),rgb(88_225_212_/_0.72))]"
                    end
                  end

                  p class: "mx-auto mt-12 max-w-[38rem] text-center text-[14px] font-light leading-8 tracking-[0.06em] text-(--foreground-soft)" do
                    plain "A focused collection of platforms, tools, and personal systems shaped through product thinking, technical structure, and long-term visual direction."
                  end
                end

                div aria: { hidden: true }
              end
            end
          end
        end
      end
    end
  end
end
