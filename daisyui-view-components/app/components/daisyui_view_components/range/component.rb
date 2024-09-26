# frozen_string_literal: true

module DaisyUIViewComponents
  module Range
    class Component < DaisyUIViewComponents::BaseComponent

      SIZE_CLASSES = {
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

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :min, type: proc(&:to_i)
      option :max, type: proc(&:to_i)
      option :form, optional: true
      option :label, optional: true
      option :value, optional: true
      option :field, optional: true, type: proc(&:to_s)

      css_classes 'range', with: [:size, :color]

      def call
        html :input, type: 'range', min: min, max: max, value: value
      end

    end
  end
end
