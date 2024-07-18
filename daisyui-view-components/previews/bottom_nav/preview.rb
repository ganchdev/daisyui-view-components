# frozen_string_literal: true

module BottomNav
  # @label Bottom Nav
  class Preview < ViewComponent::Preview

    def default
      render_with_template template: 'bottom_nav/default'
    end

    def with_labels
      render_with_template template: 'bottom_nav/with_labels'
    end

  end
end
