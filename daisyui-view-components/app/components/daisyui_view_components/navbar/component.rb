# frozen_string_literal: true

module DaisyUIViewComponents
  module Navbar
    class Component < DaisyUIViewComponents::BaseComponent

      renders_one :start_element, lambda { |position: :start, **kwargs|
        Element.new(position: position, **kwargs)
      }

      renders_one :center_element, lambda { |position: :center, **kwargs|
        Element.new(position: position, **kwargs)
      }

      renders_one :end_element, lambda { |position: :end, **kwargs|
        Element.new(position: position, **kwargs)
      }

      class Element < DaisyUIViewComponents::BaseComponent

        option :position, default: proc { :start }

        def call
          case position
          when :start
            element_class = 'navbar-start'
          when :center
            element_class = 'navbar-center'
          when :end
            element_class = 'navbar-end'
          end

          html :div, class: css(element_class) do
            content
          end
        end

      end

    end
  end
end
