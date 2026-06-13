# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Work
        class ProjectIndexBlock < Views::Components::Base
          PROJECTS = [
            [
              "02",
              "NITROCLUB",
              "Team concept build",
              "Collaborative Rails project built in a team environment, focused on turning an idea into a structured web application with shared code, database logic, and interface work.",
              [ "Ruby on Rails", "HTML", "SCSS", "JavaScript" ]
            ],
            [
              "03",
              "TREMA",
              "Group Rails product",
              "Collaborative Rails application built as a group project, showing teamwork, Rails structure, database-backed features, and fullstack product development.",
              [ "Ruby on Rails", "SCSS", "HTML", "JavaScript" ]
            ],
            [
              "04",
              "RAILS SIMPLE AIRBNB",
              "Booking CRUD app",
              "Airbnb-style Rails application built to manage listings and bookings, with full CRUD, MVC structure, PostgreSQL, forms, and booking logic.",
              [ "Ruby on Rails", "PostgreSQL", "ERB", "Bootstrap" ]
            ]
          ].freeze

          def view_template
            section class: "bg-(--background) px-8 pt-6 pb-28 lg:px-10 lg:pt-8 lg:pb-36" do
              div class: "mx-auto w-full max-w-[96rem]" do
                div class: "border-y border-(--accent-line)" do
                  PROJECTS.each do |number, title, context, description, stack|
                    project_line(number, title, context, description, stack)
                  end
                end
              end
            end
          end

          private

          def project_line(number, title, context, description, stack)
            article class: "grid gap-6 border-b border-(--border) py-9 last:border-b-0 lg:min-h-[12rem] lg:grid-cols-12 lg:items-center lg:gap-8 lg:py-10" do
              div class: "flex items-center gap-5 lg:col-span-2 lg:pl-8" do
                span class: "text-[10px] font-light tracking-[0.36em] text-(--accent)" do
                  plain number
                end

                span class: "h-px w-8 bg-(--accent-line)", aria: { hidden: true }
              end

              div class: "lg:col-span-4" do
                h3 class: "text-[18px] font-light uppercase tracking-[0.28em] text-(--foreground)" do
                  plain title
                end

                p class: "mt-4 text-[10px] font-light uppercase tracking-[0.32em] text-(--foreground-soft)" do
                  plain context
                end
              end

              div class: "lg:col-span-6 lg:justify-self-end" do
                p class: "max-w-2xl text-[13px] font-light leading-7 tracking-[0.06em] text-(--foreground-soft)" do
                  plain description
                end

                div class: "mt-5 flex flex-wrap gap-x-5 gap-y-3" do
                  stack.each do |item|
                    stack_item(item)
                  end
                end
              end
            end
          end

          def stack_item(label)
            span class: "text-[10px] font-light uppercase tracking-[0.28em] text-(--accent)" do
              plain label
            end
          end
        end
      end
    end
  end
end
