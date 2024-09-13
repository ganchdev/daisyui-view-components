# frozen_string_literal: true

# rubocop:disable Layout/LineLength
module Select
  # @label Select
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Select::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Select::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param ghost [Boolean] select [true, false] "Adds ghost style to input"
    def default(responsive: nil, color: nil, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, ghost: ghost }, template: 'select/default'
    end

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Select::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Select::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param ghost [Boolean] select [true, false] "Adds ghost style to input"
    def with_form(responsive: nil, color: nil, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, ghost: ghost }, template: 'select/with_form'
    end

  end
end
# rubocop:enable Layout/LineLength
