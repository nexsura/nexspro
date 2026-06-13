# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Work
        class CaseStudyPreviewBlock < Views::Components::Base
          TIMELINE_STEPS = [
            [
              "01",
              "CONTEXT",
              "Define the purpose, users, constraints, and direction."
            ],
            [
              "02",
              "STRUCTURE",
              "Organize pages, components, data, and technical logic."
            ],
            [
              "03",
              "INTERFACE",
              "Shape the visual system, layout, rhythm, and interaction."
            ],
            [
              "04",
              "REFINEMENT",
              "Review responsiveness, accessibility, performance, and polish."
            ],
            [
              "05",
              "RESULT",
              "Deliver a clearer, usable, maintainable digital product."
            ]
          ].freeze

          def view_template
            section class: "bg-black px-8 pt-56 pb-32 text-white lg:px-10 lg:pt-72 lg:pb-48" do
              div class: "mx-auto w-full max-w-[96rem]" do
                div class: "text-center" do
                  h2 class: "text-[clamp(2.3rem,4.55vw,5.8rem)] font-light leading-[0.94] tracking-normal text-white lg:whitespace-nowrap" do
                    plain "From project to product."
                  end

                  p class: "mx-auto mt-10 max-w-none text-[14px] font-light leading-8 tracking-[0.055em] text-white/70 lg:whitespace-nowrap" do
                    plain "Each project moves through a clear path: from raw idea to structure, interface, refinement, and usable product."
                  end
                end

                div class: "mt-20 lg:mt-28" do
                  div class: "mb-10 flex items-center justify-between text-[10px] font-light uppercase tracking-[0.36em] text-white/46" do
                    span { plain "Raw idea" }
                    span class: "text-(--accent)" do
                      plain "Process"
                    end
                    span { plain "Usable product" }
                  end

                  div class: "relative" do
                    div class: "pointer-events-none absolute left-0 right-0 top-[2.15rem] hidden h-px bg-[linear-gradient(90deg,rgb(88_225_212_/_0.08),rgb(88_225_212_/_0.42),rgb(88_225_212_/_0.08))] lg:block",
                      aria: { hidden: true }

                    ol class: "grid gap-12 lg:grid-cols-5 lg:gap-8" do
                      TIMELINE_STEPS.each do |number, label, description|
                        timeline_step(number, label, description)
                      end
                    end
                  end
                end
              end
            end
          end

          private

          def timeline_step(number, label, description)
            li class: "relative pl-8 lg:pl-0" do
              span class: "absolute left-0 top-2 h-full w-px bg-[linear-gradient(180deg,rgb(88_225_212_/_0.36),transparent)] lg:hidden",
                aria: { hidden: true }

              div class: "relative z-10 mb-8 flex items-center gap-5 lg:block" do
                span class: "flex h-16 w-16 shrink-0 items-center justify-center rounded-full border border-[rgb(88_225_212_/_0.28)] bg-black text-[10px] font-light tracking-[0.3em] text-(--accent) shadow-[0_0_34px_rgb(88_225_212_/_0.08)] lg:mb-8" do
                  plain number
                end

                p class: "text-[12px] font-light uppercase tracking-[0.36em] text-white" do
                  plain label
                end
              end

              p class: "max-w-[15.5rem] text-[12px] font-light leading-7 tracking-[0.05em] text-white/68" do
                plain description
              end
            end
          end
        end
      end
    end
  end
end
