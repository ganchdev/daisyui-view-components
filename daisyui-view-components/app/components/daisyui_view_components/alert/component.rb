# frozen_string_literal: true

module DaisyUIViewComponents
  module Alert
    class Component < DaisyUIViewComponents::BaseComponent

      renders_one :icon
      renders_one :title
      renders_one :description
      renders_many :buttons, DaisyUIViewComponents::Button::Component

    end
  end
end
