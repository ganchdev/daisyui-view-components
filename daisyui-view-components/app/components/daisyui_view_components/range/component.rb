# frozen_string_literal: true

module DaisyUIViewComponents
  module Range
    class Component < DaisyUIViewComponents::BaseComponent

      RESPONSIVE_CLASSES = {
        xs: 'range-xs',
        sm: 'range-sm',
        md: 'range-md',
        lg: 'range-lg'
      }.freeze

      COLOR_CLASSES = {
        primary: 'range-primary',
        secondary: 'range-secondary',
        accent: 'range-accent',
        info: 'range-info',
        success: 'range-success',
        warning: 'range-warning',
        error: 'range-error'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :responsive, optional: true, desc: RESPONSIVE_OPTIONS, type: proc(&:to_sym)
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :min, type: proc(&:to_i)
      option :max, type: proc(&:to_i)
      option :form, optional: true
      option :label, optional: true
      option :value, optional: true
      option :field, optional: true, type: proc(&:to_s)

      def call
        html :input, type: "range", class: css(css_classes), min: min, max: max, value: value
      end

      private

      def css_classes
        classes = ['range']
        classes << RESPONSIVE_CLASSES[responsive] if responsive
        classes << COLOR_CLASSES[color] if color

        classes.join(' ')
      end

    end
  end
end
