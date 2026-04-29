module Views
  module Components
    module Streaming
      class Section < Views::Components::Base
        def view_tempate
          render Views::Pages::Streaming::Live.new
          render Views::Pages::Streaming::Setup.new
          render Views::Pages::Streaming::Highlights.new
        end
      end
    end
  end
end
