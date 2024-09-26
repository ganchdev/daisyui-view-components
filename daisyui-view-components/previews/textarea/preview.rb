# frozen_string_literal: true

# rubocop:disable Layout/LineLength
module Textarea 
  # @label Textarea
  class Preview < ViewComponent::Preview

    # @param size [Symbol] select {{ DaisyUIViewComponents::Textarea::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Textarea::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def default(size: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { size: size, color: color, bordered: bordered, ghost: ghost }, template: 'textarea/default'
    end

    # @param size [Symbol] select {{ DaisyUIViewComponents::Textarea::Component::SIZE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Textarea::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def with_form(size: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { size: size, color: color, bordered: bordered, ghost: ghost }, template: 'textarea/with_form'
    end

  end
end
# rubocop:enable Layout/LineLength
