# frozen_string_literal: true

module Alert
  # @label Alert
  class Preview < ViewComponent::Preview

    # @param color [Symbol] select {{ DaisyUIViewComponents::Alert::Component::COLOR_OPTIONS.dup.push('nil') }}
    def default(color: nil)
      render_with_template locals: { color: color }, template: 'alert/default'
    end

    # @param color [Symbol] select {{ DaisyUIViewComponents::Alert::Component::COLOR_OPTIONS.dup.push('nil') }}
    def with_buttons(color: nil)
      render_with_template locals: { color: color }, template: 'alert/with_buttons'
    end

    # @param color [Symbol] select {{ DaisyUIViewComponents::Alert::Component::COLOR_OPTIONS.dup.push('nil') }}
    def with_icon_title_and_description(color: nil)
      render_with_template locals: { color: color }, template: 'alert/with_icon_title_and_description'
    end

  end
end
