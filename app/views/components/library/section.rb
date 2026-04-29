module Views
  module Components
    module Library
      class Section < Views::Components::Base
        def view_template
          render Views::Pages::Library::Books.new
          render Views::Pages::Library::Guides.new
          render Views::Pages::Library::Resources.new
        end
      end
    end
  end
end
