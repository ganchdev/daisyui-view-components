# frozen_string_literal: true

module DaisyUIViewComponents
  module BottomNav
    class Component < DaisyUIViewComponents::BaseComponent

      renders_many :buttons, 'Button'

      def call
        html :div, class: css('btm-nav') do
          buttons.each do |button|
            concat button
          end
        end
      end

      class Button < DaisyUIViewComponents::BaseComponent

        option :active, default: proc { false }

        renders_one :label, 'Label'

        def call
          html :button, class: css_classes do
            concat content
            concat label
          end
        end

        class Label < DaisyUIViewComponents::BaseComponent

          def call
            html :span, class: css('btm-nav-label') do
              content
            end
          end

        end

        private

        def css_classes
          css(active ? 'active' : nil)
        end

      end

    end
  end
end
