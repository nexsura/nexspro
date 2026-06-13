# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Work
        class FeaturedProjectBlock < Views::Components::Base
          def view_template
            section class: "bg-(--background) px-8 pt-28 pb-8 lg:px-10 lg:pt-40 lg:pb-10" do
              article class: "mx-auto w-full max-w-[96rem] border-t border-(--accent-line) py-16 lg:py-24" do
                div class: "grid gap-16 lg:grid-cols-12 lg:items-center" do
                  div class: "lg:col-span-7 lg:-translate-y-6" do
                    p class: "mb-10 inline-flex items-center gap-5 text-[10px] font-light uppercase tracking-[0.4em] text-(--accent)" do
                      span { plain "01" }
                      span class: "h-px w-14 bg-(--accent-line)", aria: { hidden: true }
                      span { plain "Featured system" }
                    end

                    h2 class: "text-[clamp(3.6rem,6.8vw,8rem)] font-light leading-[0.88] tracking-normal text-(--foreground)" do
                      plain "NEXSPRO"
                    end
                  end

                  div class: "border-l border-(--accent-line) pl-8 lg:col-span-5 lg:ml-auto lg:max-w-[39rem] lg:pl-14" do
                    h3 class: "mb-8 max-w-none text-[clamp(1.45rem,2vw,2.45rem)] font-light leading-[1.02] tracking-normal text-(--foreground) lg:whitespace-nowrap" do
                      plain "Personal digital platform"
                    end

                    p class: "max-w-[34rem] text-[14px] font-light leading-8 tracking-[0.06em] text-(--foreground-soft)" do
                      plain "A personal digital platform designed to connect professional identity, learning, content, creative direction, and long-term digital presence."
                    end

                    div class: "mt-8 grid grid-cols-2 gap-x-8 gap-y-4 border-t border-(--border) pt-7" do
                      focus_item("Identity")
                      focus_item("Learning")
                      focus_item("Content")
                      focus_item("Presence")
                    end

                    div class: "mt-12 border-t border-(--border) pt-7" do
                      p class: "mb-5 text-[10px] font-light uppercase tracking-[0.32em] text-(--foreground-soft)" do
                        plain "Stack"
                      end

                      div class: "flex flex-wrap gap-x-5 gap-y-3" do
                        stack_item("Ruby on Rails")
                        stack_item("Phlex")
                        stack_item("Tailwind CSS")
                        stack_item("PostgreSQL")
                      end
                    end
                  end
                end
              end
            end
          end

          private

          def focus_item(label)
            span class: "text-[10px] font-light uppercase tracking-[0.3em] text-(--foreground-soft)" do
              plain label
            end
          end

          def stack_item(label)
            span class: "text-[10px] font-light uppercase tracking-[0.26em] text-(--accent)" do
              plain label
            end
          end
        end
      end
    end
  end
end
