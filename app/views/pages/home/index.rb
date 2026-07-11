# frozen_string_literal: true

module Views
  module Pages
    module Home
      class Index < Views::Base
        def page_title
          "Home"
        end

        def view_template
          section class: "home-page h-screen overflow-y-auto snap-y snap-mandatory scroll-smooth" do
            render Views::Components::Home::Hero.new
            render Views::Components::Home::StudioSection.new
            render Views::Components::Home::StreamingSection.new
          end
        end
      end
    end
  end
end
