# frozen_string_literal: true

module DaisyUIViewComponents
  module Card
    class Component < DaisyUIViewComponents::BaseComponent

      renders_one :image, 'Image'
      renders_one :card_body, 'CardBody'

      def call
        html :div, class: css('card w-96 bg-base-100 shadow-xl') do
          content
        end
      end

      class Image < DaisyUIViewComponents::BaseComponent

        def call
          html :figure do
            content
          end
        end

      end

      class CardBody < DaisyUIViewComponents::BaseComponent

        renders_one :title, 'Title'
        renders_one :card_actions, 'CardActions'

        def call
          html :div, class: css('card-body') do
            content
          end
        end

        class Title < DaisyUIViewComponents::BaseComponent

          def call
            html :h2, class: css('card-title') do
              content
            end
          end

        end

        class CardActions < DaisyUIViewComponents::BaseComponent

          renders_many :buttons, DaisyUIViewComponents::Button::Component
          renders_many :badges, DaisyUIViewComponents::Badge::Component

          def call
            html :div, class: css('card-actions') do
              content
            end
          end

        end

      end

    end
  end
end
