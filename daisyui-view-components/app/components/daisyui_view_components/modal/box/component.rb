# frozen_string_literal: true

module DaisyUIViewComponents
  module Modal
    module Box
      class Component < DaisyUIViewComponents::BaseComponent

        option :close_button, default: proc { true }

        renders_one :modal_action, DaisyUIViewComponents::Modal::Action::Component

      end
    end
  end
end
