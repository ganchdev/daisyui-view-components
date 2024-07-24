# frozen_string_literal: true

module DaisyUIViewComponents
  module Menu
    class Component < DaisyUIViewComponents::BaseComponent

      renders_many :items, 'Item'

      class Item < DaisyUIViewComponents::BaseComponent

        option :collapsible, default: proc { false }, optional: true
        option :open, default: proc { false }, optional: true

        def call
          if collapsible
            html :details, open: open do
              content
            end
          else
            content
          end
        end

      end

    end
  end
end
