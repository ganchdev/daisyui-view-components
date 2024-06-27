# frozen_string_literal: true

module DaisyUIViewComponents
  module AvatarGroup
    class Component < DaisyUIViewComponents::BaseComponent

      renders_many :avatars, DaisyUIViewComponents::Avatar::Component

      def call
        html :div, class: css('avatar-group -space-x-6 rtl:space-x-reverse') do
          avatars.each do |avatar|
            concat avatar
          end
        end
      end

    end
  end
end
