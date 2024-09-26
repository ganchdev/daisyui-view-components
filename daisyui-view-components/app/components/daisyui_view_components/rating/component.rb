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
      option :mask_shape, optional: true
      option :allow_halves, optional: true
      option :hidden_input, optional: true

      css_classes 'rating', with: :size

      renders_many :inputs, lambda { |*args, **kwargs, &block|
        Input.new(*args, mask_shape: @mask_shape, **kwargs, &block)
      }

      def call
        html :div do
          content
        end
      end

      class Input < DaisyUIViewComponents::BaseComponent

        # rubocop:disable Naming/VariableNumber
        MASK_SHAPE_CLASSES = {
          squircle: 'mask-squircle',
          heart: 'mask-heart',
          hexagon: 'mask-hexagon',
          hexagon_2: 'mask-hexagon-2',
          decagon: 'mask-decagon',
          pentagon: 'mask-pentagon',
          diamond: 'mask-diamond',
          square: 'mask-square',
          circle: 'mask-circle',
          parallelogram: 'mask-parallelogram',
          parallelogram_2: 'mask-parallelogram-2',
          parallelogram_3: 'mask-parallelogram-3',
          parallelogram_4: 'mask-parallelogram-4',
          star: 'mask-star',
          star_2: 'mask-star-2',
          triangle: 'mask-triangle',
          triangle_2: 'mask-triangle-2',
          triangle_3: 'mask-triangle-3',
          triangle_4: 'mask-triangle-4'
        }.freeze
        # rubocop:enable Naming/VariableNumber

        MASK_SHAPE_OPTIONS = MASK_SHAPE_CLASSES .keys

        option :mask_shape, default: -> { :star }, desc: MASK_SHAPE_OPTIONS

        css_classes 'mask', with: :mask_shape

        def call
          html :input, type: 'radio'
        end

      end

    end
  end
end
