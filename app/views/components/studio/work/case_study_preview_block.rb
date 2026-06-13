# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Work
        class CaseStudyPreviewBlock < Views::Components::Base
          def view_template
            section class: "bg-(--background) px-8 py-28 lg:px-10 lg:py-36" do
              div class: "mx-auto grid w-full max-w-[96rem] gap-14 border-l border-(--accent-line) pl-8 lg:grid-cols-[1fr_0.72fr] lg:items-end lg:pl-12" do
                div do
                  h2 class: "max-w-4xl text-[clamp(2.8rem,5vw,5.8rem)] font-light leading-[0.96] tracking-normal text-(--foreground)" do
                    plain "From project to case study."
                  end

                  p class: "mt-10 max-w-2xl text-[13px] font-light leading-8 tracking-[0.06em] text-(--foreground-soft)" do
                    plain "Each system is designed to show how an idea becomes structure, how structure becomes interface, and how interface becomes a usable product."
                  end
                end

                ul class: "grid gap-px bg-(--accent-line)" do
                  study_point("Context")
                  study_point("Architecture")
                  study_point("Result")
                end
              end
            end
          end

          private

          def study_point(label)
            li class: "bg-(--background) px-6 py-5 text-[11px] font-light uppercase tracking-[0.36em] text-(--foreground) transition-colors duration-500 ease-soft hover:bg-[rgb(88_225_212_/_0.035)] hover:text-(--accent)" do
              plain label
            end
          end
        end
      end
    end
  end
end
