# frozen_string_literal: true

module Views
  module Pages
    module Home
      class Index < Views::Base
        def page_title
          "Home"
        end

        def view_template
          section class: "home-page" do
            render Views::Components::Home::Hero.new
            render Views::Components::Studio::Section.new
          end
        end
      end
    end
  end
end
