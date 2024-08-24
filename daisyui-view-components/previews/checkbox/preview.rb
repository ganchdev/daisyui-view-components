# frozen_string_literal: true

module Checkbox
  # @label Checkbox
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Checkbox::Component::RESPONSIVE_OPTIONS }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Checkbox::Component::COLOR_OPTIONS }}
    # @param checked [Boolean] select [false, true] "Checked"
    # @param disabled [Boolean] select [false, true] "Disabled"
    def default(checked: false, disabled: false, responsive: nil, color: nil)
      render_with_template locals: {
        checked: checked,
        disabled: disabled,
        responsive: responsive,
        color: color
      }, template: 'checkbox/default'
    end

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Checkbox::Component::RESPONSIVE_OPTIONS }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Checkbox::Component::COLOR_OPTIONS }}
    # @param checked [Boolean] select [false, true] "Checked"
    # @param disabled [Boolean] select [false, true] "Disabled"
    def with_form(checked: false, disabled: false, responsive: nil, color: nil)
      render_with_template locals: {
        checked: checked,
        disabled: disabled,
        responsive: responsive,
        color: color
      }, template: 'checkbox/with_form'
    end

  end
end
