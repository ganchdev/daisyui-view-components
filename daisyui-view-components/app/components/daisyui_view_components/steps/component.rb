# frozen_string_literal: true

module DaisyUIViewComponents
  module Steps
    class Component < DaisyUIViewComponents::BaseComponent

      DIRECTION_CLASSES = {
        vertical: 'steps-vertical',
        horizontal: 'steps-horizontal'
      }.freeze

      DIRECTION_OPTIONS = DIRECTION_CLASSES.keys.freeze

      option :direction, optional: true, desc: DIRECTION_OPTIONS, type: proc(&:to_sym)

      css_classes 'steps', with: :direction

      renders_many :steps, 'Step'

      def call
        html :ul do
          content
        end
      end

      class Step < DaisyUIViewComponents::BaseComponent

        COLOR_CLASSES = {
          primary: 'step-primary',
          secondary: 'step-secondary',
          accent: 'step-accent',
          info: 'step-info',
          success: 'step-success',
          warning: 'step-warning',
          error: 'step-error',
        }.freeze

        DEFAULT_COLOR = :primary

        COLOR_OPTIONS = COLOR_CLASSES.keys.freeze

        option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)

        css_classes 'step', with: :color

        def call
          html :li do
            content
          end
        end

      end

    end
  end
end
