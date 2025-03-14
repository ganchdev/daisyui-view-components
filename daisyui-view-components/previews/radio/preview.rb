# frozen_string_literal: true

# rubocop:disable Layout/LineLength
module Radio
  # @label Radio
  class Preview < ViewComponent::Preview

    # @param size [Symbol] select {{ DaisyUIViewComponents::Radio::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Radio::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param checked [Boolean] select [false, true] "Checked"
    # @param disabled [Boolean] select [false, true] "Disabled"
    def default(size: nil, color: nil, disabled: false, checked: false)
      render_with_template locals: { size: size, color: color, disabled: disabled, checked: checked }, template: 'radio/default'
    end

    # @param size [Symbol] select {{ DaisyUIViewComponents::Radio::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Radio::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param checked [Boolean] select [false, true] "Checked"
    # @param disabled [Boolean] select [false, true] "Disabled"
    def with_form(size: nil, color: nil, disabled: false, checked: false)
      render_with_template locals: { size: size, color: color, disabled: disabled, checked: checked }, template: 'radio/with_form'
    end

  end
end
# rubocop:enable Layout/LineLength
