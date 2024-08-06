# frozen_string_literal: true

module DaisyUIViewComponents
  module Checkbox
    class Component < DaisyUIViewComponents::BaseComponent

      RESPONSIVE_CLASSES = {
        xs: 'checkbox-xs',
        sm: 'checkbox-sm',
        md: 'checkbox-md',
        lg: 'checkbox-lg'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze

      COLOR_CLASSES = {
        primary: 'checkbox-primary',
        secondary: 'checkbox-secondary',
        accent: 'checkbox-accent',
        info: 'checkbox-info',
        success: 'checkbox-success',
        warning: 'checkbox-warning',
        error: 'checkbox-error'
      }.freeze

      DEFAULT_COLOR = :primary

      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze

      option :responsive, optional: true, desc: RESPONSIVE_OPTIONS, type: proc(&:to_sym)
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :form, optional: true
      option :label, optional: true
      option :field, optional: true, type: proc(&:to_s), default: proc { content&.to_sym }

      private

      def css_classes
        classes = ['checkbox']
        classes << " #{RESPONSIVE_CLASSES[responsive]}" if responsive
        classes << " #{COLOR_CLASSES[color]}" if color

        classes.join(' ')
      end

    end
  end
end
