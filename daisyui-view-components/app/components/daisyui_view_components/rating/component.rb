# frozen_string_literal: true

module DaisyUIViewComponents
  module Rating
    class Component < DaisyUIViewComponents::BaseComponent

      RESPONSIVE_CLASSES = {
        xs: 'rating-xs',
        sm: 'rating-sm',
        md: 'rating-md',
        lg: 'rating-lg'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze

      option :responsive, optional: true, desc: RESPONSIVE_OPTIONS, type: proc(&:to_sym)
      option :allow_halves, optional: true
      option :hidden_input, optional: true

      def call
        html :div, class: css_classes
      end

      private

      def css_classes
        classes = ['rating']
        css(classes)
      end

    end
  end
end
