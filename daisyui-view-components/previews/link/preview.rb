# frozen_string_literal: true

module Link
  # @label Link
  class Preview < ViewComponent::Preview

    # @param color [Symbol] select {{ DaisyUIViewComponents::Link::Component::COLOR_OPTIONS }}
    # @param url [String]
    def default(color: DaisyUIViewComponents::Link::Component::DEFAULT_COLOR, url: '#')
      render_with_template locals: {
        url: url,
        color: color
      }, template: 'link/default'
    end

  end
end
