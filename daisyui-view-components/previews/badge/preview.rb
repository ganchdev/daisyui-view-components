# frozen_string_literal: true

module Badge
  # @label Badge
  class Preview < ViewComponent::Preview

    # @param color [Symbol] select {{ DaisyUIViewComponents::Badge::Component::COLOR_OPTIONS }}
    # @param size [Symbol] select {{ DaisyUIViewComponents::Badge::Component::SIZE_OPTIONS.dup.push('nil') }}
    def default(color: nil, size: nil)
      render_with_template locals: { color: color, size: size }, template: 'badge/default'
    end

  end
end
