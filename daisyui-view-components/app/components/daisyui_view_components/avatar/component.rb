# frozen_string_literal: true

module DaisyUIViewComponents
  module Avatar
    class Component < DaisyUIViewComponents::BaseComponent

      option :online, default: proc { false }
      option :offline, default: proc { false }
      option :placeholder, default: proc { '' }

      def call
        html :span, class: css_classes do
          content
        end
      end

      def css_classes
        classes = ['avatar']
        classes << 'online' if online
        classes << 'offline' if offline
        classes << 'placeholder' if placeholder

        css(classes.join(' '))
      end

    end
  end
end
