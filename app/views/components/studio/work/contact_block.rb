# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Work
        class ContactBlock < Views::Components::Base
          def view_template
            section class: "bg-black px-8 pt-52 pb-40 text-white lg:px-10 lg:pt-72 lg:pb-52" do
              div class: "mx-auto grid w-full max-w-[96rem] gap-16 text-center" do
                div do
                  h2 class: "mx-auto max-w-6xl text-[clamp(2.4rem,4.8vw,6.2rem)] font-light leading-[0.94] tracking-normal text-white lg:whitespace-nowrap" do
                    plain "Build the next system."
                  end

                  p class: "mx-auto mt-10 max-w-xl text-[14px] font-light leading-8 tracking-[0.052em] text-white/78" do
                    plain "Open to focused digital systems and serious product work."
                  end
                end

                a href: helpers.studio_contact_path,
                  class: "group mx-auto grid w-full max-w-[34rem] gap-6 py-2 text-center" do
                  span class: "h-px w-full bg-[linear-gradient(90deg,transparent,rgb(88_225_212_/_0.28),transparent)] opacity-70 transition-opacity duration-500 ease-soft group-hover:opacity-100 group-active:opacity-100",
                    aria: { hidden: true }

                  span class: "text-[11px] font-light uppercase tracking-[0.46em] text-(--accent) transition-colors duration-500 ease-soft group-hover:text-white" do
                    plain "Contact"
                  end

                  span class: "h-px w-full bg-[linear-gradient(90deg,transparent,rgb(88_225_212_/_0.28),transparent)] opacity-70 transition-opacity duration-500 ease-soft group-hover:opacity-100 group-active:opacity-100",
                    aria: { hidden: true }
                end
              end
            end
          end
        end
      end
    end
  end
end
