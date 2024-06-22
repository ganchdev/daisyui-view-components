# frozen_string_literal: true

module DaisyUIViewComponents
  module Accordion
    class Component < DaisyUIViewComponents::BaseComponent

      option :gap, default: proc { 2 }
      option :arrow, default: proc { false }

      renders_many :collapses, lambda { |arrow: @arrow|
        DaisyUIViewComponents::Collapse::Component.new(arrow: arrow)
      }

      def css_classes
        "flex flex-wrap gap-#{@gap}"
      end

    end
  end
end
