# frozen_string_literal: true

module DaisyUIViewComponents
  module Modal
    class Component < DaisyUIViewComponents::BaseComponent

      option :open, default: proc { false }
      option :backdrop, default: proc { true }

      renders_one :modal_box, DaisyUIViewComponents::Modal::Box::Component

      def modal_backdrop
        html tag: :form, **html_options.merge(class: css('modal-backdrop')) do
          concat content_tag(:button, 'close')
        end
      end

      private

      def css_classes
        classes = %w[modal]
        classes << 'modal-open' if @open
        classes.join(' ')
      end

    end
  end
end
