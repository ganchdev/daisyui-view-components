# frozen_string_literal: true

module DaisyUIViewComponents
  module Select
    class Component < DaisyUIViewComponents::BaseComponent

      RESPONSIVE_CLASSES = {
        xs: 'select-xs',
        sm: 'select-sm',
        md: 'select-md',
        lg: 'select-lg'
      }.freeze

      COLOR_CLASSES = {
        primary: 'select-primary',
        secondary: 'select-secondary',
        accent: 'select-accent',
        info: 'select-info',
        success: 'select-success',
        warning: 'select-warning',
        error: 'select-error'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze
      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      DEFAULT_COLOR = :primary

      option :responsive, optional: true, desc: RESPONSIVE_OPTIONS, type: proc(&:to_sym)
      option :ghost, optional: true, default: false
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :form, optional: true
      option :field, optional: true, type: proc(&:to_s), default: proc { content&.to_sym }
      option :choices, default: proc { [] }
      option :include_blank, optional: true
      option :disable_blank, default: proc { false }

      private

      def css_classes
        classes = ['select']
        classes << RESPONSIVE_CLASSES[responsive] if responsive
        classes << COLOR_CLASSES[color] if color
        classes << 'select-ghost' if ghost

        classes.join(' ')
      end

      def include_blank_options
        return {} unless @include_blank

        if @disable_blank && @form
          # Form select helper options with blank disabled
          {
            selected: "",
            disabled: "",
            prompt: @include_blank
          }
        else
          # Options for `select_tag` require an empty hash when blank disabled
          # so that we can build prompt option manually otherwise two `include_blank` options are rendered
          @disable_blank ? {} : { include_blank: @include_blank }
        end
      end

      def prepare_choices
        return @choices unless @include_blank && @disable_blank

        blank_option = content_tag("option", @include_blank, value: "", selected: "", disabled: @disable_blank)
        blank_option + @choices
      end

    end
  end
end
