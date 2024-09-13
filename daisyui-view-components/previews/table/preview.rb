# frozen_string_literal: true

module Table
  # @label Table
  class Preview < ViewComponent::Preview

    # @param responsive [Symbol] select {{ DaisyUIViewComponents::Table::Component::RESPONSIVE_OPTIONS }}
    # @param zebra [Boolean] select [true, false] "Adds a box style to tabs container"
    def default(responsive: nil, zebra: nil)
      render_with_template locals: {
        responsive: responsive,
        zebra: zebra
      }, template: 'table/default'
    end

  end
end
