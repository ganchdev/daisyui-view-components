# frozen_string_literal: true

module Rating
  # @label Rating
  class Preview < ViewComponent::Preview

    # @param size [Symbol] select {{ DaisyUIViewComponents::Rating::Component::SIZE_OPTIONS.dup.push('nil') }}
    def default(size: nil)
      render_with_template locals: { size: size }, template: 'rating/default'
    end

  end
end
