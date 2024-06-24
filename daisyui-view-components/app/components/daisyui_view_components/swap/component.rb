# frozen_string_literal: true

module DaisyUIViewComponents
  module Swap
    class Component < DaisyUIViewComponents::BaseComponent

      renders_one :input, 'Input'
      renders_one :swap_on, 'On'
      renders_one :swap_off, 'Off'

      class Input < DaisyUIViewComponents::BaseComponent

        def call
          html tag: :input, type: 'checkbox', **html_options.merge(class: css('hidden')) do
            content
          end
        end

      end

      class On < DaisyUIViewComponents::BaseComponent

        def call
          html tag: :div, **html_options.merge(class: css('swap-on')) do
            content
          end
        end

      end

      class Off < DaisyUIViewComponents::BaseComponent

        def call
          html tag: :div, **html_options.merge(class: css('swap-off')) do
            content
          end
        end

      end

    end
  end
end
