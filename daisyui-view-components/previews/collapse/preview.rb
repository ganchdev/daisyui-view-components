# frozen_string_literal: true

module Collapse
  # @label Collapse
  class Preview < ViewComponent::Preview

    def default
      render_with_template template: 'collapse/default'
    end

  end
end
