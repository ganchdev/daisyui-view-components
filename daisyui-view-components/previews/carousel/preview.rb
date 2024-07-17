# frozen_string_literal: true

module Carousel
  # @label Carousel
  class Preview < ViewComponent::Preview

    # @param carousel_center [Boolean] select [false, true] "Snap elements to center"
    # @param carousel_end [Boolean] select [true, false] "Snap elements to end"
    # @param carousel_vertical [Boolean] select [true, false] "Vertical carousel"
    def default(carousel_center: false, carousel_end: false, carousel_vertical: false)
      render_with_template locals: {
        carousel_center: carousel_center,
        carousel_end: carousel_end,
        carousel_vertical: carousel_vertical
      }, template: 'carousel/default'
    end

  end
end
