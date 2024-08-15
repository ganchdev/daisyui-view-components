# frozen_string_literal: true

# rubocop:disable Layout/LineLength
module FileInput
  # @label FileInput
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::FileInput::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::FileInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [true, false] "Adds border to input"
    # @param ghost [Boolean] select [true, false] "Adds ghost style to input"
    def default(responsive: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, bordered: bordered, ghost: ghost }, template: 'file_input/default'
    end

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::FileInput::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::FileInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [true, false] "Adds border to input"
    # @param ghost [Boolean] select [true, false] "Adds ghost style to input"
    def with_form(responsive: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, bordered: bordered, ghost: ghost }, template: 'file_input/with_form'
    end


  end
end
# rubocop:enable Layout/LineLength
