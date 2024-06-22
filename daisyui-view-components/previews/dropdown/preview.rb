# frozen_string_literal: true

module Dropdown
  # @label Dropdown
  class Preview < ViewComponent::Preview

    # @param position [Symbol] select {{ DaisyUIViewComponents::Dropdown::Component::POSITIONS }} "The position of the menu"
    def default(position: nil)
      render_with_template locals: { position: position }, template: 'dropdown/default'
    end

  end
end
