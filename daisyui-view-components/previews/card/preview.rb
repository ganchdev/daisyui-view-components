# frozen_string_literal: true

module Card
  # @label Card
  class Preview < ViewComponent::Preview

    def default
      render_with_template template: 'card/default'
    end

  end
end
