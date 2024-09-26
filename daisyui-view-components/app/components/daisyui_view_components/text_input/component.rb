# frozen_string_literal: true

module DaisyUIViewComponents
  module TextInput
    class Component < DaisyUIViewComponents::BaseComponent

      SIZE_CLASSES = {
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

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)
      option :bordered, optional: true, default: false
      option :ghost, optional: true, default: false
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :form, optional: true
      option :field, optional: true, type: proc(&:to_s)

      css_classes 'input' do |classes|
        classes << SIZE_CLASSES[size] if size
        classes << COLOR_CLASSES[color] if color
        classes << 'input-ghost' if ghost
        classes << 'input-bordered' if bordered
      end

      renders_one :before
      renders_one :after

      private

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
