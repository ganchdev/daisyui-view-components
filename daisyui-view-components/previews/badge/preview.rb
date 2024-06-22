# frozen_string_literal: true

module Badge
  # @label Badge
  class Preview < ViewComponent::Preview

    def default
      render_with_template template: 'badge/default'
    end

  end
end
