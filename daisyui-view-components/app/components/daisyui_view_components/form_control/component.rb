# frozen_string_literal: true

module DaisyUIViewComponents
  module FormControl
    class Component < DaisyUIViewComponents::BaseComponent

      renders_one :top_label, DaisyUIViewComponents::Label::Component
      renders_one :bottom_label, DaisyUIViewComponents::Label::Component
      renders_one :control

      def call
        html :div, class: css('form-control') do
          concat top_label if top_label?
          concat content
          concat bottom_label if bottom_label?
        end
      end

    end
  end
end
