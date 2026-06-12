# frozen_string_literal: true

module Views
  module Pages
    module Studio
      class Contact < Views::Base
        def page_title = "Contact"

        def view_template
          render Components::Studio::Contact::Main.new
        end
      end
    end
  end
end
