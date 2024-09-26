# frozen_string_literal: true

module DaisyUIViewComponents
  module Button
    class Component < DaisyUIViewComponents::BaseComponent

      COLOR_CLASSES = {
        neutral: 'btn-neural',
        primary: 'btn-primary',
        accent: 'btn-accent',
        info: 'btn-info',
        success: 'btn-success',
        warning: 'btn-warning',
        error: 'btn-error',
        ghost: 'btn-ghost'
      }.freeze

      STYLE_CLASSES = {
        link: 'btn-link',
        outline: 'btn-outline'
      }.freeze

      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze
      STYLE_OPTIONS = STYLE_CLASSES.keys.freeze

      option :url, optional: true, type: proc(&:to_s)
      option :label, optional: true, type: proc(&:to_sym)
      option :method, optional: true, type: proc(&:to_sym)
      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :style, optional: true, desc: STYLE_OPTIONS, type: proc(&:to_sym)

      css_classes 'btn', with: [:color, :style]

      def call
        button do
          content
        end
      end

      # rubocop:disable Metrics/AbcSize
      # rubocop:disable Metrics/MethodLength
      def button(&block)
        @html_options[:class] = css_classes
        options = { data: @data }

        if @url.blank?
          if @label.present?
            options = options.except(:type)

            label_tag(@label, **options, **html_options, &block)
          else
            button_tag(**options, **html_options, &block)
          end
        elsif @method.present?
          options[:method] = @method
          options[:type] = :button

          button_to(@url, **options, **html_options, &block)
        else
          link_to(@url, **options, **html_options, &block)
        end
      end
      # rubocop:enable Metrics/AbcSize
      # rubocop:enable Metrics/MethodLength

    end
  end
end
