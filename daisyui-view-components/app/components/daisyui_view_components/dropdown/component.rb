# frozen_string_literal: true

module DaisyUIViewComponents
  module Dropdown
    class Component < DaisyUIViewComponents::BaseComponent

      POSITIONS = [:end, :top, :bottom, :right, :left].freeze

      option :position, optional: true, desc: POSITIONS, type: proc(&:to_sym)

      css_classes 'dropdown' do |classes|
        classes << "dropdown-#{@position}" if @position
      end

      renders_one :trigger, 'Trigger'
      renders_one :menu, lambda { |*args, **kwargs, &block|
        DaisyUIViewComponents::Menu::Component.new(
          *args,
          class: 'dropdown-content z-[1] menu p-2 shadow bg-base-200 rounded-box w-56',
          **kwargs,
          &block
        )
      }

      class Trigger < DaisyUIViewComponents::BaseComponent

        def call
          html :div, role: 'button', tabindex: 0, class: css('btn m-1') do
            content
          end
        end

      end

    end
  end
end
