# frozen_string_literal: true

module DaisyUIViewComponents
  module Toggle
    class Component < DaisyUIViewComponents::Checkbox::Component

      RESPONSIVE_CLASSES = {
        xs: 'toggle-xs',
        sm: 'toggle-sm',
        md: 'toggle-md',
        lg: 'toggle-lg'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze

      COLOR_CLASSES = {
        primary: 'toggle-primary',
        secondary: 'toggle-secondary',
        accent: 'toggle-accent',
        info: 'toggle-info',
        success: 'toggle-success',
        warning: 'toggle-warning',
        error: 'toggle-error'
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
        classes = ['toggle']
        classes << RESPONSIVE_CLASSES[responsive] if responsive
        classes << COLOR_CLASSES[color] if color

        classes.join(' ')
      end

    end
  end
end
