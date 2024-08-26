# frozen_string_literal: true

module RangeSlider
  # @label Range Slider
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Range::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Range::Component::COLOR_OPTIONS.dup.push('nil') }}
    def default(responsive: nil, color: nil, min: nil, max: nil)
      render_with_template locals: { responsive: responsive, color: color, min: min, max: max }, template: 'range_slider/default'
    end

  end
end
