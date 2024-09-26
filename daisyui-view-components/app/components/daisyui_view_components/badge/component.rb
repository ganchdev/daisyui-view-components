# frozen_string_literal: true

module DaisyUIViewComponents
  module Badge
    class Component < DaisyUIViewComponents::BaseComponent

      COLOR_CLASSES = {
        primary: 'badge-primary',
        secondary: 'badge-secondary',
        accent: 'badge-accent',
        info: 'badge-info',
        success: 'badge-success',
        warning: 'badge-warning',
        error: 'badge-error'
      }.freeze

      SIZE_CLASSES = {
        xs: 'range-xs',
        sm: 'range-sm',
        md: 'range-md',
        lg: 'range-lg'
      }.freeze

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :size, optional: true, desc: SIZE_CLASSES, type: proc(&:to_sym)

      css_classes 'badge', with: [:color, :size]

      def call
        html :span do
          content
        end
      end

    end
  end
end
