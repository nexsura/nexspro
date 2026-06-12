# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Profile
        class Method < Views::Components::Base
          def view_template
            div class: "mx-auto grid w-full max-w-[96rem] gap-16 py-24 lg:grid-cols-[1.25fr_0.75fr]" do
              div do
                p class: "mb-12 text-center text-[12px] font-light uppercase tracking-[0.42em] text-(--accent)" do
                  plain "Method"
                end

                div class: "grid gap-px bg-(--accent-line) lg:grid-cols-2" do
                  method_panel("01", "Clarity", "Purpose, context, user needs, project direction")
                  method_panel("02", "Structure", "Pages, components, content, architecture, technical logic")
                  method_panel("03", "Execution", "Clean code, focused iterations, version control, interface building")
                  method_panel("04", "Refinement", "Testing, responsive checks, performance, accessibility, final polish")
                end
              end

              div class: "flex flex-col justify-center border-r border-(--accent-line) pr-8 text-right lg:-translate-y-3" do
                h2 class: "text-[clamp(3rem,5.4vw,6.1rem)] font-light leading-[0.96] tracking-normal text-(--foreground)" do
                  plain "Shaped by a precise working method."
                end
              end
            end
          end

          private

          def method_panel(number, title, text)
            div class: "group min-h-[18rem] bg-(--background) p-8 transition-colors duration-500 ease-soft hover:bg-[rgb(88_225_212_/_0.035)]" do
              div class: "flex h-full flex-col justify-between" do
                div class: "flex items-center justify-between" do
                  span(class: "text-[10px] font-light tracking-[0.34em] text-(--accent)") { plain number }

                  span class: "h-px w-12 bg-(--accent-line) transition-all duration-500 ease-soft group-hover:w-20 group-hover:bg-(--accent)",
                    aria: { hidden: true }
                end

                div do
                  h3(class: "mb-5 text-[17px] font-light uppercase tracking-[0.32em] text-(--foreground)") { plain title }

                  p class: "max-w-sm text-[13px] font-light leading-7 tracking-[0.06em] text-(--foreground-soft)" do
                    plain text
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
