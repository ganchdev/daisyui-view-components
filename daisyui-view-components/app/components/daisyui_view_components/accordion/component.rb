# frozen_string_literal: true

module DaisyUIViewComponents
  module Accordion
    class Component < DaisyUIViewComponents::BaseComponent

      prop :checked
      prop :gap
      prop :arrow

      renders_many :collapses, lambda { |arrow: @arrow|
        DaisyUIViewComponents::Collapse::Component.new(arrow: arrow)
      }

      def css_classes
        classes = %w[flex flex-wrap]
        if @gap
          classes << "gap-#{@gap}"
        else
          classes << 'gap-2'
        end

        classes.join(' ')
      end

    end
  end
end
