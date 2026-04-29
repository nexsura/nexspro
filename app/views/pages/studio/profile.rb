# frozen_string_literal: true

module Views
  module Pages
    module Studio
      class Profile < Views::Base
        def page_title
          "Profile"
        end

        def view_template
          section id: "connect-profile",
            class: "min-h-screen bg-(--background) px-8 py-32" do
            h1 class: "text-(--text-title-size) font-light tracking-tight" do
              plain "Profile"
            end
          end
        end
      end
    end
  end
end
