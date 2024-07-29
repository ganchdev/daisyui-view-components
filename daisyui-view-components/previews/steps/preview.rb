# frozen_string_literal: true

module Steps
  # @label Steps
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Steps::Component::RESPONSIVE_OPTIONS }}
    def default(responsive: nil)
      render_with_template locals: { responsive: responsive }, template: 'steps/default'
    end

  end
end
