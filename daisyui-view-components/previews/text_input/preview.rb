# frozen_string_literal: true

# rubocop:disable Layout/LineLength
module TextInput
  # @label TextInput
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def default(responsive: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, bordered: bordered, ghost: ghost }, template: 'text_input/default'
    end

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def with_form(responsive: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, bordered: bordered, ghost: ghost }, template: 'text_input/with_form'
    end

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def with_icon_inside(responsive: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, bordered: bordered, ghost: ghost }, template: 'text_input/with_icon_inside'
    end

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def with_text_label_inside(responsive: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, bordered: bordered, ghost: ghost }, template: 'text_input/with_text_label_inside'
    end

  end
end
# rubocop:enable Layout/LineLength
