# frozen_string_literal: true

module Views
  module Components
    class Base < Phlex::HTML
      include Phlex::Rails::Helpers::Routes
      include Phlex::Rails::Helpers::LinkTo
      include Phlex::Rails::Helpers::ButtonTo
      include Phlex::Rails::Helpers::FormWith
      include Phlex::Rails::Helpers::ImageTag
      include Phlex::Rails::Helpers::CSRFMetaTags
      include Phlex::Rails::Helpers::CSPMetaTag
      include Phlex::Rails::Helpers::StyleSheetLinkTag
    end
  end
end
