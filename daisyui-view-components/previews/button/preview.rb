# frozen_string_literal: true

module Button
  # @label Button
  class Preview < ViewComponent::Preview

    # @param color [Symbol] select {{ DaisyUIViewComponents::Button::Component::COLOR_OPTIONS.dup.push('nil') }}
    # @param style [Symbol] select {{ DaisyUIViewComponents::Button::Component::STYLE_OPTIONS.dup.push('nil') }}
    def default(
      url: '',
      label: '',
      method: '',
      options: '',
      color: nil,
      style: nil
    )
      render_with_template locals: {
        url: url,
        label: label,
        method: method,
        options: options,
        color: color,
        style: style
      }, template: 'button/default'
    end

  end
end
