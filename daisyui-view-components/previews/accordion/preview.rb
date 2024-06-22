# fronze_string_literal: true

module Accordion
  # @label Accordion
  class Preview < ViewComponent::Preview

    def default(arrow: false)
      render_with_template locals: { arrow: arrow }, template: 'accordion/default'
    end

    def with_arrow_icon
      render_with_template template: 'accordion/with_arrow_icon'
    end

  end
end
