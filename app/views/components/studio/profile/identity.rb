# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Profile
        class Identity < Views::Components::Base
          def view_template
            section id: "studio-profile",
              class: "relative overflow-hidden bg-(--background) px-8 pt-32 lg:px-10" do
              div class: "mx-auto grid min-h-[calc(100vh-16rem)] w-full max-w-[96rem] items-center gap-20 lg:grid-cols-[0.92fr_1.08fr]" do
                div class: "lg:-ml-2" do
                  h1 class: "max-w-5xl select-none text-[clamp(4rem,6.4vw,7.4rem)] font-light leading-none tracking-normal text-(--foreground)" do
                    span(class: "block") { plain "Creator" }
                    span(class: "mt-8 block") { plain "of digital" }
                    span(class: "mt-8 block") { plain "universes" }
                  end
                end

                div class: "flex w-full flex-col gap-22 lg:ml-auto" do
                  div class: "grid max-w-4xl gap-7 lg:mt-10" do
                    p class: "text-center text-[13px] font-light uppercase tracking-[0.42em] text-(--accent)" do
                      plain "Creative Identity"
                    end

                    profile_sentence "I build digital worlds with the discipline of engineering and the sensitivity of visual art."
                    profile_sentence "Every detail is shaped with intention, precision, and a refusal to settle for ordinary work.", align: "ml-auto"
                    profile_sentence "My direction is simple: raise the standard until the experience feels world-class."
                  end

                  div class: "grid gap-10 sm:grid-cols-3" do
                    profile_axis("01", "Technical mastery")
                    profile_axis("02", "Artistic direction")
                    profile_axis("03", "World-class standard")
                  end
                end
              end
            end
          end

          private

          def profile_sentence(text, align: nil)
            p class: "#{align} max-w-2xl text-[14px] font-light leading-8 tracking-[0.04em] text-(--foreground-soft) lg:leading-9" do
              plain text
            end
          end

          def profile_axis(number, label)
            div class: "group text-center text-(--foreground-soft)" do
              span(class: "mb-6 block text-[10px] font-light tracking-[0.28em] text-(--accent)") { plain number }

              span class: "relative inline-block pb-3 text-[11px] font-light uppercase tracking-[0.34em] transition-colors duration-500 ease-soft group-hover:text-(--accent)" do
                plain label

                span class: "absolute bottom-0 left-1/2 h-px w-0 -translate-x-1/2 bg-(--accent-line) transition-all duration-500 ease-soft group-hover:w-full",
                  aria: { hidden: true }
              end
            end
          end
        end
      end
    end
  end
end
