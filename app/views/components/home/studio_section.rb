# frozen_string_literal: true

module Views
  module Components
    module Home
      class StudioSection < Views::Components::Base
        def view_template
          section id: "studio",
            class: "relative flex min-h-screen snap-start items-center overflow-hidden bg-(--background) px-8 pb-24 pt-36 lg:px-10 lg:pb-28 lg:pt-40" do
            div class: "mx-auto grid w-full max-w-[96rem] gap-16 lg:grid-cols-[minmax(0,34rem)_minmax(0,1fr)] lg:items-center lg:gap-24" do
              visual_panel
              content_panel
            end
          end
        end

        private

        def visual_panel
          aside class: "relative grid justify-items-center" do
            p class: "text-[10px] font-light uppercase tracking-[0.48em] text-(--accent)" do
              plain "Studio"
            end

            div class: "mt-9 w-full max-w-[30rem] lg:max-w-[32rem]" do
              laptop_illustration
            end

            p class: "mt-8 max-w-[28rem] text-center text-[12px] font-light uppercase leading-7 tracking-[0.24em] text-(--foreground-soft)" do
              plain "The workbench behind the public product."
            end
          end
        end

        def laptop_illustration
          div class: "w-full" do
            img src: helpers.image_path("home/studio-laptop.svg"),
              alt: "",
              class: "block h-auto w-full select-none",
              loading: "lazy",
              decoding: "async",
              draggable: "false",
              aria: { hidden: true }
          end
        end

        def content_panel
          div class: "grid justify-items-center gap-10 text-center lg:gap-12" do
            div class: "grid justify-items-center gap-7" do
              h2 class: "max-w-[64rem] text-[clamp(2.6rem,3.4vw,4rem)] font-light leading-none tracking-[-0.035em] text-(--foreground) xl:whitespace-nowrap" do
                plain "Execution before presentation."
              end

              p class: "max-w-[48rem] text-center text-[15px] font-light leading-8 tracking-[0.045em] text-(--foreground-soft)" do
                plain "Studio is where Nexspro makes execution visible: shipped work, technical decisions, process, and the standard behind the product."
              end
            end

            div class: "grid w-full max-w-[56rem] gap-5 md:grid-cols-3" do
              principle(
                "Proof",
                "Show what is built, not what is promised."
              )

              principle(
                "Process",
                "Structure decisions before shipping interfaces."
              )

              principle(
                "Direction",
                "Build focused systems with a clear standard."
              )
            end

            div class: "flex flex-wrap justify-center gap-4 border-t border-(--border) pt-8" do
              studio_link("View work", helpers.studio_work_path)
              studio_link("Read profile", helpers.studio_profile_path)
              studio_link("Contact", helpers.studio_contact_path)
            end
          end
        end

        def principle(label, text)
          div class: "flex min-h-32 flex-col items-center justify-center border border-(--accent-line) px-6 py-7 text-center" do
            p class: "text-[10px] font-light uppercase tracking-[0.34em] text-(--accent)" do
              plain label
            end

            p class: "mt-5 max-w-[14rem] text-[13px] font-light leading-7 tracking-[0.06em] text-(--foreground-soft)" do
              plain text
            end
          end
        end

        def studio_link(label, href)
          a href: href,
            class: "group inline-flex items-center gap-4 border border-(--accent-line) px-5 py-4 text-[10px] font-light uppercase tracking-[0.3em] text-(--foreground) transition-colors duration-500 ease-soft hover:border-(--accent) hover:text-(--accent)" do
            span do
              plain label
            end

            span class: "text-(--accent) transition-transform duration-500 ease-soft group-hover:translate-x-1" do
              plain "→"
            end
          end
        end
      end
    end
  end
end
