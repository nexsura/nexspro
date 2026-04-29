module Views
  module Components
    module Studio
      class Section < Views::Components::Base
        def view_tempate
          render Views::Pages::Studio::Work.new
          render Views::Pages::Studio::Profile.new
          render Views::Pages::Studio::Contact.new
        end
      end
    end
  end
end
