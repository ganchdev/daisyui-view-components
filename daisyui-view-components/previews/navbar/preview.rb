# frozen_string_literal: true

module Navbar
  # @label Navbar
  class Preview < ViewComponent::Preview

    def default
      render_with_template template: 'navbar/default'
    end

  end
end
