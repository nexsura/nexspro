module Views
  module Components
    module Gaming
      class Section < Views::Components::Base
        def view_template
          render Views::Pages::Gaming::Games.new
          render Views::Pages::Gaming::Builds.new
          render Views::Pages::Gaming::Competition.new
        end
      end
    end
  end
end
