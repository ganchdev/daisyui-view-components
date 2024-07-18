# frozen_string_literal: true

module Breadcrumbs
  # @label Breadcrumbs
  class Preview < ViewComponent::Preview

    def default
      render_with_template template: 'breadcrumbs/default'
    end

    def with_icons
      render_with_template template: 'breadcrumbs/with_icons'
    end

  end
end
