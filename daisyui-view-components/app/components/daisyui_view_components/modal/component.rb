# frozen_string_literal: true

module DaisyUIViewComponents
  module Modal
    class Component < DaisyUIViewComponents::BaseComponent

      option :open, default: proc { false }
      option :backdrop, default: proc { true }

      css_classes 'modal' do |classes|
        classes << 'modal-open' if @open
      end

      renders_one :modal_box, DaisyUIViewComponents::Modal::Box::Component

    end
  end
end
