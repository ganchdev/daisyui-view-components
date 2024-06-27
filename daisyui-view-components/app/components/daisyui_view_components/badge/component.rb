# frozen_string_literal: true

module DaisyUIViewComponents
  module Badge
    class Component < DaisyUIViewComponents::BaseComponent

      def call
        html :span, class: css('badge') do
          content
        end
      end

    end
  end
end
