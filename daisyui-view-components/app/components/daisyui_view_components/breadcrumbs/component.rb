# frozen_string_literal: true

module DaisyUIViewComponents
  module Breadcrumbs
    class Component < DaisyUIViewComponents::BaseComponent

      renders_many :items, 'Item'

      class Item < DaisyUIViewComponents::BaseComponent

        def call
          html :li do
            content
          end
        end

      end

    end
  end
end