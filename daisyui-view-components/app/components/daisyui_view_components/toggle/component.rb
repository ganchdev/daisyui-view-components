# frozen_string_literal: true

module DaisyUIViewComponents
  module Toggle
    class Component < DaisyUIViewComponents::Checkbox::Component

      SIZE_CLASSES = {
        xs: 'toggle-xs',
        sm: 'toggle-sm',
        md: 'toggle-md',
        lg: 'toggle-lg'
      }.freeze

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze

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

      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :form, optional: true
      option :label, optional: true
      option :field, optional: true, type: proc(&:to_s), default: proc { content&.to_sym }

      css_classes 'toggle' do |classes|
        classes << SIZE_CLASSES[size] if size
        classes << COLOR_CLASSES[color] if color
      end

    end
  end
end
