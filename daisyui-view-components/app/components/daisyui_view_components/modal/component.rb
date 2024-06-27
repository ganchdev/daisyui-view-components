# frozen_string_literal: true

module DaisyUIViewComponents
  module Modal
    class Component < DaisyUIViewComponents::BaseComponent

      option :open, default: proc { false }
      option :backdrop, default: proc { true }

      renders_one :modal_box, DaisyUIViewComponents::Modal::Box::Component

      private

      def css_classes
        classes = %w[modal]
        classes << 'modal-open' if @open
        classes.join(' ')
      end

    end
  end
end
