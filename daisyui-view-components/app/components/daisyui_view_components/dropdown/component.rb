# frozen_string_literal: true

module DaisyUIViewComponents
  module Dropdown
    class Component < DaisyUIViewComponents::BaseComponent

      POSITIONS = [:end, :top, :bottom, :right, :left].freeze

      option :position, optional: true, type: proc(&:to_sym)

      renders_one :trigger, 'Trigger'
      renders_one :menu, lambda { |css: 'dropdown-content z-[1] menu p-2 shadow bg-base-200 rounded-box w-56'|
        DaisyUIViewComponents::Menu::Component.new(class: css)
      }

      class Trigger < DaisyUIViewComponents::BaseComponent

        def call
          html :div, role: 'button', tabindex: 0, class: css('btn m-1') do
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
