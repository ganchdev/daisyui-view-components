# frozen_string_literal: true

# rubocop:disable Layout/LineLength
module Toggle
  # @label Toggle
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Toggle::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Toggle::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param checked [Boolean] select [false, true] "Checked"
    # @param disabled [Boolean] select [false, true] "Disabled"
    def default(responsive: nil, color: nil, disabled: false, checked: false)
      render_with_template locals: { responsive: responsive, color: color, disabled: disabled, checked: checked }, template: 'toggle/default'
    end

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Toggle::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Toggle::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param checked [Boolean] select [false, true] "Checked"
    # @param disabled [Boolean] select [false, true] "Disabled"
    def with_form(responsive: nil, color: nil, disabled: false, checked: false)
      render_with_template locals: { responsive: responsive, color: color, disabled: disabled, checked: checked }, template: 'toggle/with_form'
    end

  end
end
# rubocop:enable Layout/LineLength
