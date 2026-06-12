# app/views/components/studio/contact/main.rb
# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Contact
        class Main < Views::Components::Base
          def view_template
            section id: "studio-contact", class: "flex min-h-screen items-center bg-(--background) px-8 py-32 lg:px-10" do
              div class: "mx-auto flex min-h-[calc(100vh-16rem)] w-full max-w-(--container) items-center justify-center" do
                div class: "w-full translate-y-14 text-center lg:translate-y-16" do
                  categories
                  intro
                  email_link
                  back_link
                end
              end
            end
          end

          private

          def categories
            div class: "mx-auto grid max-w-6xl gap-16 md:grid-cols-3" do
              contact_category(
                "Projects",
                "Share a focused project request, from product design to web development, with clear goals, timing, and expected outcomes."
              )

              contact_category(
                "Opportunities",
                "Open a conversation around professional opportunities, long-term roles, creative direction, or digital product work."
              )

              contact_category(
                "Collaboration",
                "Start a collaborative exchange around ideas, content, web presence, brand systems, or creative digital experiences."
              )
            end
          end

          def intro
            p class: "mx-auto mt-28 max-w-3xl text-[13px] font-light leading-9 tracking-[0.08em] text-(--foreground-soft)" do
              plain "For focused project inquiries, professional opportunities, and meaningful collaborations around digital products, web development, and creative direction. Send a clear message with context, goals, and timeline."
            end
          end

          def email_link
            div class: "mx-auto mt-28 flex max-w-4xl items-center gap-12" do
              div class: "h-px flex-1 bg-(--border)"
              a href: "mailto:contact@nexspro.com", class: "shrink-0 text-[11px] font-light uppercase tracking-[0.36em] text-(--foreground-soft) transition-colors duration-500 ease-soft hover:text-(--accent)" do
                plain "contact@nexspro.com"
              end
              div class: "h-px flex-1 bg-(--border)"
            end
          end

          def back_link
            a href: helpers.root_path, class: "mt-24 inline-block text-[11px] font-light uppercase tracking-[0.36em] text-(--foreground-soft) transition-colors duration-500 ease-soft hover:text-(--accent)" do
              plain "Back"
            end
          end

          def contact_category(title, description)
            details class: "group text-center" do
              summary class: "relative inline-flex cursor-pointer list-none pb-3 text-[17px] font-light uppercase tracking-[0.5em] text-(--foreground) transition-colors duration-500 ease-soft group-open:text-(--accent) hover:text-(--accent)" do
                plain title
                span class: "absolute bottom-0 left-0 h-px w-0 bg-(--accent-line) transition-all duration-500 ease-soft group-open:w-full group-hover:w-full", aria: { hidden: true }
              end

              p class: "mx-auto mt-8 max-w-xs text-[12px] font-light leading-7 tracking-[0.08em] text-(--foreground-soft)" do
                plain description
              end
            end
          end
        end
      end
    end
  end
end
