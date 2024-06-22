# frozen_string_literal: true

module DaisyUIViewComponents
  module Dropdown
    class Component < DaisyUIViewComponents::BaseComponent

      POSITIONS = [:end, :top, :bottom, :right, :left].freeze

      option :position, optional: true, type: proc(&:to_s)

      renders_one :trigger, 'Trigger'
      renders_one :menu, lambda { |css_classes: 'dropdown-content z-[1] menu p-2 shadow bg-base-100 rounded-box w-56'|
        DaisyUIViewComponents::Menu::Component.new(class: css_classes, tabindex: 0)
      }

      class Trigger < DaisyUIViewComponents::BaseComponent

        def call
          html tag: :div, role: 'button', tabindex: 0, **html_options.merge(class: css('btn m-1')) do
            content
          end
        end

      end

      def css_classes
        classes = %w[dropdown]
        classes << "dropdown-#{@position}" if @position

        classes.join(' ')
      end

    end
  end
end
