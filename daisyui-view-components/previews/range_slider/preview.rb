# frozen_string_literal: true

module RangeSlider
  # @label Range Slider
  class Preview < ViewComponent::Preview

    # @param size [Symbol] select {{ DaisyUIViewComponents::Range::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Range::Component::COLOR_OPTIONS.dup.push('nil') }}
    def default(size: nil, color: nil, min: nil, max: nil)
      render_with_template locals: { size: size, color: color, min: min, max: max }, template: 'range_slider/default'
    end

  end
end
