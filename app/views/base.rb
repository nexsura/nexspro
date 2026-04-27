# frozen_string_literal: true

module Views
  class Base < Views::Components::Base
    def around_template
      render layout.new(page_info: page_info) do
        super
      end
    end

    private
    
    def layout
      Views::Layouts::ApplicationLayout
    end

    def page_info
      { title: page_title }
    end

    def page_title
      "Nexspro"
    end
  end
end
