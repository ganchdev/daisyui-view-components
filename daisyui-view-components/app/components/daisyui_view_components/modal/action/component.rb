# frozen_string_literal: true

module DaisyUIViewComponents
  module Modal
    module Action
      class Component < DaisyUIViewComponents::BaseComponent

        renders_many :buttons, DaisyUIViewComponents::Button::Component
        renders_one :close_button, 'CloseButton'

        def call
          html :div , class: css('modal-action') do
            content
          end
        end

        class CloseButton < DaisyUIViewComponents::BaseComponent

          def call
            html :form, method: 'dialog' do
              concat content_tag :button, content || 'Close', class: css('btn')
            end
          end

        end

      end
    end
  end
end
