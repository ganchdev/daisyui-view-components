# frozen_string_literal: true

module Steps
  # @label Steps
  class Preview < ViewComponent::Preview

    # @param direction [Symbol] select {{ DaisyUIViewComponents::Steps::Component::DIRECTION_OPTIONS }}
    def default(direction: nil)
      render_with_template locals: { direction: direction }, template: 'steps/default'
    end

  end
end
