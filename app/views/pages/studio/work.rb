# frozen_string_literal: true

module Views
  module Pages
    module Studio
      class Work < Views::Base
        def page_title = "Work"

        def view_template
          render Views::Components::Studio::Work::HeroBlock.new
          render Views::Components::Studio::Work::FeaturedProjectBlock.new
          render Views::Components::Studio::Work::ProjectIndexBlock.new
          render Views::Components::Studio::Work::CaseStudyPreviewBlock.new
          render Views::Components::Studio::Work::ContactBlock.new
        end
      end
    end
  end
end
