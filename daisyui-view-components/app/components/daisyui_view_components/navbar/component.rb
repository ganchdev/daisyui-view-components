# frozen_string_literal: true

module DaisyUIViewComponents
  module Navbar
    class Component < DaisyUIViewComponents::BaseComponent

      renders_one :start_element, lambda { |position: :start, **args|
        DaisyUIViewComponents::Navbar::Component::Element.new(position: position, **args)
      }

      renders_one :center_element, lambda { |position: :center, **args|
        DaisyUIViewComponents::Navbar::Component::Element.new(position: position, **args)
      }

      renders_one :end_element, lambda { |position: :end, **args|
        DaisyUIViewComponents::Navbar::Component::Element.new(position: position, **args)
      }

      class Element < DaisyUIViewComponents::BaseComponent

        option :position, default: proc { :start }

        def call
          html :div, class: css("navbar-#{@position}") do
            content
          end
        end

      end

    end
  end
end
