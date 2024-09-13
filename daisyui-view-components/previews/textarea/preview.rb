# frozen_string_literal: true

# rubocop:disable Layout/LineLength
module Textarea 
  # @label Textarea
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Textarea::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Textarea::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def default(responsive: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, bordered: bordered, ghost: ghost }, template: 'textarea/default'
    end

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Textarea::Component::RESPONSIVE_OPTIONS.dup.push('nil') }}
    # @param color [Symbol] select {{ DaisyUIViewComponents::Textarea::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param bordered [Boolean] select [false, true] "Bordered"
    # @param ghost [Boolean] select [false, true] "Ghost"
    def with_form(responsive: nil, color: nil, bordered: false, ghost: false)
      render_with_template locals: { responsive: responsive, color: color, bordered: bordered, ghost: ghost }, template: 'textarea/with_form'
    end

  end
end
# rubocop:enable Layout/LineLength
