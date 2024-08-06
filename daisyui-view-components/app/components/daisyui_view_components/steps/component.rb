# frozen_string_literal: true

module DaisyUIViewComponents
  module Steps
    class Component < DaisyUIViewComponents::BaseComponent

      RESPONSIVE_CLASSES = {
        vertical: 'steps-vertical',
        horizontal: 'steps-horizontal'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze

      option :responsive, optional: true, desc: RESPONSIVE_OPTIONS, type: proc(&:to_sym)

      renders_many :steps, 'Step'

      def call
        classes = ['steps']
        classes << " #{RESPONSIVE_CLASSES[responsive]}" if responsive

        html :ul, class: css(classes.join(' ')) do
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

        def call
          classes = ['step']
          classes << " #{COLOR_CLASSES[color]}" if color

          html :li, class: css(classes.join(' ')) do
            content
          end
        end

      end

    end
  end
end
