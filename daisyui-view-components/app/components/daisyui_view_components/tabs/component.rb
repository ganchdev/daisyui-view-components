# frozen_string_literal: true

module DaisyUIViewComponents
  module Tabs
    class Component < DaisyUIViewComponents::BaseComponent

      SIZE_CLASSES = {
        xs: 'tabs-xs',
        sm: 'tabs-sm',
        md: 'tabs-md',
        lg: 'tabs-lg'
      }.freeze

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze

      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)
      option :boxed, optional: true, default: proc { false }
      option :bordered, optional: true, default: proc { false }
      option :lifted, optional: true, default: proc { false }

      css_classes 'tabs' do |classes|
        classes << SIZE_CLASSES[size] if size
        classes << 'tabs-boxed' if boxed
        classes << 'tabs-bordered' if bordered
        classes << 'tabs-lifted' if lifted
      end

      renders_many :tabs, 'Tab'

      class Tab < DaisyUIViewComponents::BaseComponent

        option :active, optional: true
        option :disabled, optional: true

        css_classes 'tab' do |classes|
          classes << 'tab-active' if active
          classes << 'tab-disabled' if disabled
        end

        def call
          html :a, role: 'tab' do
            content
          end
        end

      end

    end
  end
end
