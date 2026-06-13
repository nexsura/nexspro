# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Work
        class ContactBlock < Views::Components::Base
          def view_template
            section class: "bg-(--background) px-8 pt-24 pb-36 lg:px-10 lg:pt-32 lg:pb-44" do
              div class: "mx-auto w-full max-w-[96rem] text-center" do
                div class: "mx-auto mb-16 h-px w-full max-w-4xl bg-[linear-gradient(90deg,transparent,rgb(88_225_212_/_0.65),transparent)]",
                  aria: { hidden: true }

                h2 class: "mx-auto max-w-5xl text-[clamp(2.6rem,5vw,5.6rem)] font-light leading-[0.98] tracking-normal text-(--foreground)" do
                  plain "Want to build something with me?"
                end

                p class: "mx-auto mt-10 max-w-2xl text-[13px] font-light leading-8 tracking-[0.06em] text-(--foreground-soft)" do
                  plain "I am open to projects, opportunities, and collaborations around web platforms, Rails applications, digital systems, and product-oriented interfaces."
                end

                a href: helpers.studio_contact_path,
                  class: "mt-14 inline-flex border border-(--accent-line) px-7 py-4 text-[10px] font-light uppercase tracking-[0.34em] text-(--accent) transition-colors duration-500 ease-soft hover:border-(--accent) hover:bg-[rgb(88_225_212_/_0.06)] hover:text-(--foreground)" do
                  plain "Contact"
                end
              end
            end
          end
        end
      end
    end
  end
end
