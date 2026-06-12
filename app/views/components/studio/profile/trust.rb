# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Profile
        class Trust < Views::Components::Base
          def view_template
            section class: "bg-(--background) px-8 py-32 lg:px-10 lg:py-40" do
              div class: "mx-auto w-full max-w-[96rem]" do
                div class: "grid border-y border-(--accent-line) lg:grid-cols-4" do
                  trust_item(
                    "01",
                    "Ownership",
                    "Projects are handled with responsibility, clear direction, focused decisions, and attention to the final experience. Each choice is made to serve the user, the product, and the long-term value of the work."
                  )

                  trust_item(
                    "02",
                    "Maintainability",
                    "Components, structure, naming, and responsibilities are organized to keep the codebase clean, readable, and easy to evolve. The goal is to build systems that can grow without becoming chaotic."
                  )

                  trust_item(
                    "03",
                    "Quality control",
                    "Responsive checks, visual refinement, performance awareness, security foundations, accessibility, and final polish guide each release. Details are reviewed until the result feels stable, coherent, and professional."
                  )

                  trust_item(
                    "04",
                    "Long-term evolution",
                    "The work is designed to improve over time, adapt to new needs, and remain stable beyond the first version. Every project is treated as a living system, not a disposable page."
                  )
                end

                div class: "mt-28 text-center lg:mt-36" do
                  p class: "mb-10 text-[12px] font-light uppercase tracking-[0.42em] text-(--accent)" do
                    plain "Trust"
                  end

                  h2 class: "mx-auto max-w-none text-[clamp(1.8rem,3vw,3.4rem)] font-light leading-[1.05] tracking-normal text-(--foreground) lg:whitespace-nowrap" do
                    plain "Built to remain clear, reliable, and maintainable."
                  end

                  p class: "mx-auto mt-8 max-w-2xl text-[13px] font-light leading-7 tracking-[0.06em] text-(--foreground-soft)" do
                    plain "Every decision is made to keep the product understandable, stable, and ready to evolve."
                  end
                end
              end
            end
          end

          private

          def trust_item(number, title, text)
            article class: "group border-b border-(--accent-line) py-12 transition-colors duration-500 ease-soft last:border-b-0 hover:bg-[rgb(88_225_212_/_0.025)] lg:border-b-0 lg:border-r lg:px-8 lg:py-14 lg:last:border-r-0" do
              span class: "mb-14 block text-[10px] font-light tracking-[0.34em] text-(--accent)" do
                plain number
              end

              h3 class: "mb-7 text-[15px] font-light uppercase tracking-[0.3em] text-(--foreground) transition-colors duration-500 ease-soft group-hover:text-(--accent)" do
                plain title
              end

              p class: "max-w-sm text-[12px] font-light leading-6 tracking-[0.05em] text-(--foreground-soft)" do
                plain text
              end
            end
          end
        end
      end
    end
  end
end
