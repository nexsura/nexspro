# frozen_string_literal: true

module Views
  module Pages
    module Studio
      class Profile < Views::Base
        def page_title = "Profile"

        def view_template
          render Views::Components::Studio::Profile::Identity.new
          render Views::Components::Studio::Profile::Transition.new
          render Views::Components::Studio::Profile::Method.new
          render Views::Components::Studio::Profile::Transition.new
        end
      end
    end
  end
end
