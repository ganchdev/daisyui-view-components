# frozen_string_literal: true

module DaisyUIViewComponents
  module Tabs
    class Component < DaisyUIViewComponents::BaseComponent

      RESPONSIVE_CLASSES = {
        xs: 'tabs-xs',
        sm: 'tabs-sm',
        md: 'tabs-md',
        lg: 'tabs-lg'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze

      option :responsive, optional: true, desc: RESPONSIVE_OPTIONS, type: proc(&:to_sym)
      option :boxed, optional: true, default: proc { false }
      option :bordered, optional: true, default: proc { false }
      option :lifted, optional: true, default: proc { false }

      renders_many :tabs, 'Tab'

      class Tab < DaisyUIViewComponents::BaseComponent

        option :active, optional: true
        option :disabled, optional: true

        def call
          classes = ['tab']
          classes << 'tab-active' if active
          classes << 'tab-disabled' if disabled

          html :a, class: css(classes.join(' ')), role: 'tab' do
            content
          end
        end

      end

      private

      def css_classes
        classes = ['tabs']
        classes << RESPONSIVE_CLASSES[responsive] if responsive
        classes << 'tabs-boxed' if boxed
        classes << 'tabs-bordered' if bordered
        classes << 'tabs-lifted' if lifted

        classes.join(' ')
      end

    end
  end
end
