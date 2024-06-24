# frozen_string_literal: true

module Swap
  # @label Swap
  class Preview < ViewComponent::Preview

    def default
      render_with_template template: 'swap/default'
    end

    def volume_icons
      render_with_template template: 'swap/volume_icons'
    end

    def rotate_effect
      render_with_template template: 'swap/rotate_effect'
    end

    def hamburger_button
      render_with_template template: 'swap/hamburger_button'
    end

    def flip_effect
      render_with_template template: 'swap/flip_effect'
    end

  end
end
