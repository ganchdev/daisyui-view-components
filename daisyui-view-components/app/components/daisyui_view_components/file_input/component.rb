# frozen_string_literal: true

module DaisyUIViewComponents
  module FileInput
    class Component < DaisyUIViewComponents::BaseComponent

      SIZE_CLASSES = {
        xs: 'file-input-xs',
        sm: 'file-input-sm',
        md: 'file-input-md',
        lg: 'file-input-lg'
      }.freeze

      COLOR_CLASSES = {
        primary: 'file-input-primary',
        secondary: 'file-input-secondary',
        accent: 'file-input-accent',
        info: 'file-input-info',
        success: 'file-input-success',
        warning: 'file-input-warning',
        error: 'file-input-error'
      }.freeze

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)
      option :bordered, optional: true, default: false
      option :ghost, optional: true, default: false
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :form, optional: true
      option :field, optional: true, type: proc(&:to_s), default: proc { content&.to_sym }

      css_classes 'file-input' do |classes|
        classes << SIZE_CLASSES[size] if size
        classes << COLOR_CLASSES[color] if color
        classes << 'file-input-ghost' if ghost
        classes << 'file-input-bordered' if bordered
      end

    end
  end
end
