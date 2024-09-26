# frozen_string_literal: true

module DaisyUIViewComponents
  module Radio
    class Component < DaisyUIViewComponents::BaseComponent

      SIZE_CLASSES = {
        xs: 'radio-xs',
        sm: 'radio-sm',
        md: 'radio-md',
        lg: 'radio-lg'
      }.freeze

      COLOR_CLASSES = {
        primary: 'radio-primary',
        secondary: 'radio-secondary',
        accent: 'radio-accent',
        info: 'radio-info',
        success: 'radio-success',
        warning: 'radio-warning',
        error: 'radio-error'
      }.freeze

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :form, optional: true
      option :id, optional: true
      option :label, optional: true
      option :value, optional: true
      option :field, optional: true, type: proc(&:to_s), default: proc { content&.to_sym }

      css_classes 'radio' do |classes|
        classes << SIZE_CLASSES[size] if size
        classes << COLOR_CLASSES[color] if color
      end

      private

      def id_attribute
        @id ||= begin
          if label && value
            "#{label.parameterize}-#{value}"
          elsif label
            "#{label.parameterize}-#{SecureRandom.hex(3)}"
          else
            SecureRandom.hex(3)
          end
        end
      end

    end
  end
end
