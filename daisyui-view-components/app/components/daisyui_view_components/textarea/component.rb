# frozen_string_literal: true

module DaisyUIViewComponents
  module Textarea
    class Component < DaisyUIViewComponents::BaseComponent

      RESPONSIVE_CLASSES = {
        xs: 'textarea-xs',
        sm: 'textarea-sm',
        md: 'textarea-md',
        lg: 'textarea-lg'
      }.freeze

      COLOR_CLASSES = {
        primary: 'textarea-primary',
        secondary: 'textarea-secondary',
        accent: 'textarea-accent',
        info: 'textarea-info',
        success: 'textarea-success',
        warning: 'textarea-warning',
        error: 'textarea-error'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :responsive, optional: true, desc: RESPONSIVE_OPTIONS, type: proc(&:to_sym)
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :ghost, optional: true, default: false
      option :bordered, optional: true, default: false
      option :form, optional: true
      option :field, optional: true, type: proc(&:to_s), default: proc { content&.to_sym }

      private

      def css_classes
        classes = ['textarea']
        classes << 'textarea-ghost' if ghost
        classes << 'textarea-bordered' if bordered
        classes << RESPONSIVE_CLASSES[responsive] if responsive
        classes << COLOR_CLASSES[color] if color

        classes.join(' ')
      end

      def value
        html_options[:value]
      end

    end
  end
end
