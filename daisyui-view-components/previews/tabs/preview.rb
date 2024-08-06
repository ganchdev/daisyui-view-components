# frozen_string_literal: true

module Tabs
  # @label Tabs
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Tabs::Component::RESPONSIVE_OPTIONS }}
    # @param boxed [Boolean] select [true, false] "Adds a box style to tabs container"
    # @param bordered [Boolean] select [true, false] "Adds bottom border to tab item"
    # @param lifted [Boolean] select [true, false] "Adds lifted style to tab item"
    def default(responsive: nil, boxed: false, bordered: false, lifted: false)
      render_with_template locals: {
        responsive: responsive,
        boxed: boxed,
        bordered: bordered,
        lifted: lifted
      }, template: 'tabs/default'
    end

  end
end
