# frozen_string_literal: true

module DaisyUIViewComponents
  module Link
    class Component < DaisyUIViewComponents::BaseComponent

      COLOR_CLASSES = {
        neutral: 'link-neutral',
        primary: 'link-primary',
        secondary: 'link-secondary',
        accent: 'link-accent',
        success: 'link-success',
        info: 'link-info',
        warning: 'link-warning',
        error: 'link-error',
        hover: 'link-hover'
      }.freeze

      DEFAULT_COLOR = :neutral

      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze

      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)
      option :url, type: proc(&:to_s)

      def call
        link_to content, @url, class: css_classes, **html_options
      end

      private

      def css_classes
        classes = ['link']
        classes << " #{COLOR_CLASSES[color]}" if color

        css(classes.join(' '))
      end

    end
  end
end