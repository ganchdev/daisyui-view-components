# frozen_string_literal: true

module DaisyUIViewComponents
  module Textarea
    class Component < DaisyUIViewComponents::BaseComponent

      SIZE_CLASSES = {
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

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :ghost, optional: true, default: false
      option :bordered, optional: true, default: false
      option :form, optional: true
      option :field, optional: true, type: proc(&:to_s), default: proc { content&.to_sym }

      css_classes 'textarea' do |classes|
        classes << 'textarea-ghost' if ghost
        classes << 'textarea-bordered' if bordered
        classes << SIZE_CLASSES[size] if size
        classes << COLOR_CLASSES[color] if color
      end

      private

      def value
        html_options[:value]
      end

    end
  end
end
