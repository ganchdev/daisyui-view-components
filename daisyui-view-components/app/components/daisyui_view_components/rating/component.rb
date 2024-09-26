# frozen_string_literal: true

module DaisyUIViewComponents
  module Rating
    class Component < DaisyUIViewComponents::BaseComponent

      SIZE_CLASSES = {
        xs: 'rating-xs',
        sm: 'rating-sm',
        md: 'rating-md',
        lg: 'rating-lg'
      }.freeze

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze

      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)
      option :allow_halves, optional: true
      option :hidden_input, optional: true

      css_classes 'rating', with: :size

      def call
        html :div
      end

    end
  end
end
