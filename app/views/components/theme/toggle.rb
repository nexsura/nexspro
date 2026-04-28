# frozen_string_literal: true

module Views
  module Components
    module Theme
      class Toggle < Views::Components::Base
        def initialize(dark: true)
          @dark = dark
        end

        def view_template
          button type: "button",
            class: "inline-flex h-8 w-8 items-center justify-center opacity-80 transition-all duration-150 ease-[var(--ease-soft)] hover:scale-[1.03] hover:opacity-100",
            aria: {
              label: "Toggle theme",
              pressed: @dark.to_s
            } do
            img src: icon_path,
              alt: "",
              class: "h-[16px] w-[16px]"
          end
        end

        private

        def icon_path
          @dark ? "/sun.svg" : "/moon.svg"
        end
      end
    end
  end
end
