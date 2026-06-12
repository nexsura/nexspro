# frozen_string_literal: true

module Views
  module Components
    module Studio
      module Profile
        class Transition < Views::Components::Base
          def view_template
            div class: "pointer-events-none relative mx-auto my-28 h-[20rem] w-full max-w-[96rem] overflow-hidden",
              aria: { hidden: true } do
              div class: "absolute inset-x-0 top-0 h-24 bg-gradient-to-b from-(--background) to-transparent"
              div class: "absolute inset-x-0 bottom-0 h-24 bg-gradient-to-t from-(--background) to-transparent"

              div class: "absolute left-1/2 top-1/2 h-[10rem] w-[min(54rem,76vw)] -translate-x-1/2 -translate-y-1/2 rounded-full bg-[radial-gradient(ellipse_at_center,rgb(88_225_212_/_0.13)_0%,rgb(88_225_212_/_0.045)_38%,transparent_72%)] blur-2xl"

              div class: "absolute left-1/2 top-1/2 h-px w-[min(68rem,86vw)] -translate-x-1/2 -translate-y-1/2 bg-gradient-to-r from-transparent via-[rgb(88_225_212_/_0.82)] to-transparent shadow-[0_0_34px_rgb(88_225_212_/_0.42)]"

              div class: "absolute left-1/2 top-1/2 h-[3px] w-[min(18rem,36vw)] -translate-x-1/2 -translate-y-1/2 bg-[linear-gradient(90deg,transparent,rgb(88_225_212_/_0.95),transparent)] blur-[1px]"
            end
          end
        end
      end
    end
  end
end
