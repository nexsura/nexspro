# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Profile
        class Skills < Views::Components::Base
          def view_template
            section class: "bg-(--background) px-8 py-32 lg:px-10 lg:py-40" do
              div class: "mx-auto w-full max-w-[96rem]" do
                header class: "mb-20 text-center lg:mb-24" do
                  p class: "mb-8 text-[12px] font-light uppercase tracking-[0.42em] text-(--accent)" do
                    plain "Capabilities"
                  end

                  h2 class: "mx-auto text-[clamp(2.4rem,4vw,4.4rem)] font-light leading-[0.94] tracking-normal text-(--foreground) lg:whitespace-nowrap" do
                    plain "Built to create complete digital products."
                  end
                end

                div class: "border-y border-(--accent-line)" do
                  skill_line("01", "Web platforms", "Portfolios, studio websites, landing pages, multilingual pages, profile sections, contact pages, and structured brand experiences built with a clear visual direction.")
                  skill_line("02", "Business applications", "Dashboards, admin areas, internal tools, database-backed workflows, client spaces, and management interfaces designed for real operational use.")
                  skill_line("03", "Content & community systems", "Blogs, news spaces, learning libraries, documentation hubs, member areas, profiles, notifications, and structured content spaces designed to scale.")
                  skill_line("04", "Api-powered products", "Rails APIs, JSON backends, authenticated endpoints, frontend integrations, SaaS foundations, mobile backends, and AI-ready products with clean technical structure.")
                end
              end
            end
          end

          private

          def skill_line(number, title, text)
            div class: "group grid gap-5 border-b border-(--accent-line) py-8 transition-colors duration-500 ease-soft last:border-b-0 hover:bg-[rgb(88_225_212_/_0.025)] lg:grid-cols-12 lg:items-center lg:gap-8 lg:py-10" do
              span class: "text-[10px] font-light tracking-[0.34em] text-(--accent) lg:col-span-2" do
                plain number
              end

              h3 class: "text-[17px] font-light uppercase tracking-[0.2em] text-(--foreground) transition-colors duration-500 ease-soft group-hover:text-(--accent) lg:col-span-4 lg:tracking-[0.3em]" do
                plain title
              end

              p class: "max-w-[34rem] text-[13px] font-light leading-7 tracking-[0.06em] text-(--foreground-soft) lg:col-span-6 lg:justify-self-end" do
                plain text
              end
            end
          end
        end
      end
    end
  end
end
