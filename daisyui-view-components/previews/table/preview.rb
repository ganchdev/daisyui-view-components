# frozen_string_literal: true

module Table
  # @label Table
  class Preview < ViewComponent::Preview

    # @param size [Symbol] select {{ DaisyUIViewComponents::Table::Component::SIZE_OPTIONS }}
    # @param zebra [Boolean] select [true, false] "Adds a box style to tabs container"
    def default(size: nil, zebra: nil)
      render_with_template locals: {
        size: size,
        zebra: zebra
      }, template: 'table/default'
    end

  end
end
