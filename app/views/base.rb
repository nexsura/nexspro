# frozen_string_literal: true

class Views::Base < Components::Base
  def page_title
    "Nexspro"
  end

  def page_info
    { title: page_title }
  end

  def around_template(&content)
    render Components::Layout.new(page_info) do
      super(&content)
    end
  end
  
  def cache_store = Rails.cache
end
