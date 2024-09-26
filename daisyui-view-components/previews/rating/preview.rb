# frozen_string_literal: true

module Rating
  # @label Rating
  class Preview < ViewComponent::Preview

    # @param size [Symbol] select {{ DaisyUIViewComponents::Rating::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param mask_shape [Symbol] select {{ DaisyUIViewComponents::Rating::Component::Input::MASK_SHAPE_OPTIONS }}
    def default(size: nil, mask_shape: nil)
      render_with_template locals: { size: size, mask_shape: mask_shape }, template: 'rating/default'
    end

  end
end
