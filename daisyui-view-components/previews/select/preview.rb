# frozen_string_literal: true

# rubocop:disable Layout/LineLength
module Select
  # @label Select
  class Preview < ViewComponent::Preview

    # @param size [Symbol] select {{ DaisyUIViewComponents::Select::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Select::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param ghost [Boolean] select [true, false] "Adds ghost style to select"
    # @param bordered [Boolean] select [true, false] "Adds border to select"
    def default(size: nil, color: nil, ghost: false, bordered: false)
      render_with_template locals: { size: size, color: color, ghost: ghost, bordered: bordered }, template: 'select/default'
    end

    # @param size [Symbol] select {{ DaisyUIViewComponents::Select::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Select::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param ghost [Boolean] select [true, false] "Adds ghost style to select"
    # @param bordered [Boolean] select [true, false] "Adds border to select"
    def with_form(size: nil, color: nil, ghost: false, bordered: false)
      render_with_template locals: { size: size, color: color, ghost: ghost, bordered: bordered }, template: 'select/with_form'
    end

  end
end
# rubocop:enable Layout/LineLength
