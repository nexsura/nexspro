module Views
  module Components
    module Connect
      class Section < Views::Components::Base
        def view_template
          render Views::Pages::Connect::Socials.new
          render Views::Pages::Connect::Community.new
        end
      end
    end
  end
end
