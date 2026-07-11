# frozen_string_literal: true

module Views
  module Components
    module Home
      class StreamingSection < Views::Components::Base
        def view_template
          section id: "streaming",
            class: "relative isolate flex min-h-screen snap-start items-center overflow-hidden bg-(--background) px-8 pb-20 pt-32 lg:px-10 lg:pb-24 lg:pt-36" do
            div class: "relative z-10 mx-auto grid w-full max-w-[96rem] gap-14 lg:grid-cols-[minmax(0,26rem)_minmax(0,38rem)_minmax(0,26rem)] lg:items-center lg:justify-center lg:gap-10" do
              intro_panel
              stage_visual
              output_panel
            end
          end
        end

        private

        def intro_panel
          aside class: "grid justify-items-center gap-7 text-center lg:justify-items-end lg:text-right" do
            p class: "text-[10px] font-light uppercase tracking-[0.44em] text-(--accent)" do
              plain "Streaming"
            end

            h2 class: "max-w-[26rem] text-[clamp(2rem,2.55vw,3.25rem)] font-light leading-[0.96] tracking-[-0.04em] text-(--foreground)" do
              plain "Public signal."
              br
              plain "Built to be seen."
            end

            p class: "max-w-[26rem] text-[13px] font-light leading-8 tracking-[0.035em] text-(--foreground-soft)" do
              plain "Live sessions, setup, and highlights form the public output layer of Nexspro."
            end

            div class: "grid w-full max-w-[26rem]" do
              signal_row("Format", "Live presence")
              signal_row("Output", "Visible moments")
              signal_row("System", "Controlled setup")
            end
          end
        end

        def stage_visual
          div class: "relative grid justify-items-center" do
            div class: "pointer-events-none absolute left-1/2 top-1/2 h-[40rem] w-[40rem] -translate-x-1/2 -translate-y-1/2 rounded-full bg-[radial-gradient(circle,rgb(88_225_212_/_0.10),rgb(88_225_212_/_0.035)_34%,transparent_72%)] blur-3xl",
              aria: { hidden: true }

            div class: "pointer-events-none absolute left-1/2 top-1/2 h-[16rem] w-[40rem] -translate-x-1/2 -translate-y-1/2 bg-[radial-gradient(ellipse,rgb(88_225_212_/_0.09),rgb(88_225_212_/_0.03)_42%,transparent_74%)] blur-2xl",
              aria: { hidden: true }

            div class: "relative w-full max-w-[38rem]" do
              img src: helpers.image_path("home/streaming-stage.svg"),
                alt: "",
                class: "block h-auto w-full select-none opacity-95 drop-shadow-[0_0_28px_rgb(88_225_212_/_0.14)]",
                loading: "lazy",
                decoding: "async",
                draggable: "false",
                aria: { hidden: true }
            end
          end
        end

        def output_panel
          div class: "grid justify-items-center gap-7 text-center lg:justify-items-start lg:text-left" do
            div class: "grid justify-items-center gap-5 lg:justify-items-start" do
              h3 class: "max-w-[26rem] text-[clamp(2rem,2.55vw,3.25rem)] font-light leading-[0.96] tracking-[-0.04em] text-(--foreground) xl:whitespace-nowrap" do
                plain "Signal before noise."
              end

              p class: "max-w-[26rem] text-[13px] font-light leading-8 tracking-[0.035em] text-(--foreground-soft)" do
                plain "Streaming is where presence becomes controlled output: live moments, visible setup, and highlights shaped for a public digital brand."
              end
            end

            div class: "grid w-full max-w-[26rem]" do
              output_row(
                "Live",
                "Show the moment while it happens."
              )

              output_row(
                "Setup",
                "Make the system behind the output visible."
              )

              output_row(
                "Highlights",
                "Keep the strongest moments alive."
              )
            end

            div class: "grid w-full max-w-[28rem] gap-3 border-t border-(--border) pt-7 sm:grid-cols-3" do
              streaming_link("View live", helpers.streaming_live_path)
              streaming_link("Setup", helpers.streaming_setup_path)
              streaming_link("Highlights", helpers.streaming_highlights_path)
            end
          end
        end

        def signal_row(label, value)
          div class: "grid gap-3 border-t border-(--accent-line) py-5 first:border-t-0 lg:justify-items-end" do
            p class: "text-[10px] font-light uppercase tracking-[0.32em] text-(--accent)" do
              plain label
            end

            p class: "text-[12px] font-light uppercase leading-6 tracking-[0.2em] text-(--foreground-soft)" do
              plain value
            end
          end
        end

        def output_row(label, text)
          div class: "grid gap-3 border-t border-(--accent-line) py-5 first:border-t-0" do
            p class: "text-[10px] font-light uppercase tracking-[0.32em] text-(--accent)" do
              plain label
            end

            p class: "text-[13px] font-light leading-7 tracking-[0.05em] text-(--foreground-soft)" do
              plain text
            end
          end
        end

        def streaming_link(label, href)
          a href: href,
            class: "group inline-flex items-center justify-center gap-3 border border-(--accent-line) px-4 py-4 text-[10px] font-light uppercase tracking-[0.24em] text-(--foreground) transition-colors duration-500 ease-soft hover:border-(--accent) hover:text-(--accent)" do
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
