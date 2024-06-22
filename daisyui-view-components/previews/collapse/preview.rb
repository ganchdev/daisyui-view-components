# frozen_string_literal: true

module Collapse
  # @label Collapse
  class Preview < ViewComponent::Preview

    # @param open [Boolean] select [false, true] "Force open"
    # @param arrow [Boolean] select [false, true] "Show arrow"
    def default(open: false, arrow: false)
      render_with_template locals: { open: open, arrow: arrow }, template: 'collapse/default'
    end

  end
end
