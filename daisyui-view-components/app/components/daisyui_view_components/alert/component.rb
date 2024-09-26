# frozen_string_literal: true

module DaisyUIViewComponents
  module Alert
    class Component < DaisyUIViewComponents::BaseComponent

      COLOR_CLASSES = {
        info: 'alert-info',
        success: 'alert-success',
        warning: 'alert-warning',
        error: 'alert-error'
      }.freeze

      COLOR_OPTIONS = COLOR_CLASSES.keys.freeze

      renders_one :icon
      renders_one :title
      renders_one :description
      renders_many :buttons, DaisyUIViewComponents::Button::Component

      option :color, optional: true, desc: COLOR_CLASSES, type: proc(&:to_sym)

      css_classes 'alert', with: :color

    end
  end
end
