# frozen_string_literal: true

module DaisyUIViewComponents
  module Avatar
    class Component < DaisyUIViewComponents::BaseComponent

      option :online, default: proc { false }
      option :offline, default: proc { false }
      option :placeholder, default: proc { '' }

      css_classes 'avatar', with: [:online, :offline, :placeholder]

      def call
        html :span do
          content
        end
      end

    end
  end
end
