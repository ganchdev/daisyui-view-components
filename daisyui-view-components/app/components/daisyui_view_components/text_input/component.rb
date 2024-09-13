# frozen_string_literal: true

module DaisyUIViewComponents
  module TextInput
    class Component < DaisyUIViewComponents::BaseComponent

      RESPONSIVE_CLASSES = {
        xs: 'input-xs',
        sm: 'input-sm',
        md: 'input-md',
        lg: 'input-lg'
      }.freeze

      COLOR_CLASSES = {
        primary: 'input-primary',
        secondary: 'input-secondary',
        accent: 'input-accent',
        info: 'input-info',
        success: 'input-success',
        warning: 'input-warning',
        error: 'input-error'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :responsive, optional: true, desc: RESPONSIVE_OPTIONS, type: proc(&:to_sym)
      option :bordered, optional: true, default: false
      option :ghost, optional: true, default: false
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :form, optional: true
      option :field, optional: true, type: proc(&:to_s)

      renders_one :before
      renders_one :after

      private

      def css_classes
        classes = ['input']
        classes << RESPONSIVE_CLASSES[responsive] if responsive
        classes << COLOR_CLASSES[color] if color
        classes << 'input-ghost' if ghost
        classes << 'input-bordered' if bordered

        classes.join(' ')
      end

      def field
        @field ||= content
      end

      def value
        html_options[:value]
      end

      def input_opts
        html_options.except(:class)
      end

      def input
        cls = before || after ? 'grow border-none focuso:outline-none focus:ring-0' : css_classes

        if form.present?
          form.text_field field, class: css(cls), **input_opts
        else
          text_field_tag field, value, class: css(cls), **input_opts
        end
      end

    end
  end
end
