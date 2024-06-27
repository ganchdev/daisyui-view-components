# frozen_string_literal: true

module DaisyUIViewComponents
  module Menu
    class Component < DaisyUIViewComponents::BaseComponent

      renders_many :items, 'Item'

      class Item < DaisyUIViewComponents::BaseComponent

        def call
          content
        end

      end

    end
  end
end
