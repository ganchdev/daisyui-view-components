# frozen_string_literal: true

module Rating
  # @label Rating
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Rating::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    def default(responsive: nil)
      render_with_template locals: { responsive: responsive }, template: 'rating/default'
    end

  end
end
