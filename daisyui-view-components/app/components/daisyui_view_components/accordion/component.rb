# frozen_string_literal: true

module DaisyUIViewComponents
  module Accordion
    class Component < DaisyUIViewComponents::BaseComponent

      option :gap, default: proc { 2 }
      option :arrow, default: proc { false }

      renders_many :collapses, lambda { |arrow: @arrow|
        DaisyUIViewComponents::Collapse::Component.new(arrow: arrow)
      }

      def call
        html :div, class: css_classes do
          collapses.each do |collapse|
            concat collapse
          end
        end
      end

      def css_classes
        css("flex flex-wrap gap-#{@gap}")
      end

    end
  end
end
