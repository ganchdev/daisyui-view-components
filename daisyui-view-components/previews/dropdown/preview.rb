# frozen_string_literal: true

module Dropdown
  # @label Dropdown
  class Preview < ViewComponent::Preview

    def default
      render_with_template template: 'dropdown/default'
    end

  end
end
