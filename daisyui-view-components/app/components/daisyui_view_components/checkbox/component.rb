# frozen_string_literal: true

module DaisyUIViewComponents
  module Checkbox
    class Component < DaisyUIViewComponents::BaseComponent

      SIZE_CLASSES = {
        xs: 'checkbox-xs',
        sm: 'checkbox-sm',
        md: 'checkbox-md',
        lg: 'checkbox-lg'
      }.freeze

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze

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

      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :form, optional: true
      option :label, optional: true
      option :field, optional: true, type: proc(&:to_s), default: proc { content&.to_sym }

      css_classes 'checkbox', with: [:color, :size]

    end
  end
end
