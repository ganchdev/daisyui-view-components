# frozen_string_literal: true

module DaisyUIViewComponents
  module Swap
    class Component < DaisyUIViewComponents::BaseComponent

      renders_one :swap_on, 'SwapOn'
      renders_one :swap_off, 'SwapOff'
      renders_one :input, 'SwapInput'

      def call
        html :label, class: css('swap') do
          content
        end
      end

      class SwapInput < DaisyUIViewComponents::BaseComponent

        def call
          html :input, type: 'checkbox', class: css('hidden') do
            content
          end
        end

      end

      class SwapOn < DaisyUIViewComponents::BaseComponent

        def call
          html :div, class: css('swap-on') do
            content
          end
        end

      end

      class SwapOff < DaisyUIViewComponents::BaseComponent

        def call
          html :div, class: css('swap-off') do
            content
          end
        end

      end

    end
  end
end
