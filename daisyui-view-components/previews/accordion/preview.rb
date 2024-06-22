# fronze_string_literal: true

module Accordion
  # @label Accordion
  class Preview < ViewComponent::Preview

    # @label Column
    # @param arrow [Boolean] select [false, true] "Show arrow"
    def default(arrow: false)
      render_with_template locals: { arrow: arrow }, template: 'accordion/default'
    end

  end
end
