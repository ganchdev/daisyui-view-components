# frozen_string_literal: true

# rubocop:disable Layout/LineLength
module TextInput
  # @label TextInput
  class Preview < ViewComponent::Preview

    # @param size [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def default(size: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { size: size, color: color, bordered: bordered, ghost: ghost }, template: 'text_input/default'
    end

    # @param size [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def with_form(size: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { size: size, color: color, bordered: bordered, ghost: ghost }, template: 'text_input/with_form'
    end

    # @param size [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def with_icon_inside(size: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { size: size, color: color, bordered: bordered, ghost: ghost }, template: 'text_input/with_icon_inside'
    end

    # @param size [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::TextInput::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def with_text_label_inside(size: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { size: size, color: color, bordered: bordered, ghost: ghost }, template: 'text_input/with_text_label_inside'
    end

  end
end
# rubocop:enable Layout/LineLength
