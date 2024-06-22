# frozen_string_literal: true

module DaisyUIViewComponents
  module Card

    class Component < DaisyUIViewComponents::BaseComponent

      renders_one :image, 'Image'
      renders_one :card_body, 'CardBody'

      class Image < DaisyUIViewComponents::BaseComponent

        prop :position # @return Symbol

        def call
          html tag: :figure, **html_options do
            content
          end
        end

      end

      class CardBody < DaisyUIViewComponents::BaseComponent

        renders_one :title, 'Title'
        renders_one :card_actions, 'CardActions'

        def call
          html tag: :div, **html_options.merge(class: css('card-body'))do
            content
          end
        end

        class Title < DaisyUIViewComponents::BaseComponent

          def call
            html tag: :h2, **html_options.merge(class: css('card-title')) do
              content
            end
          end

        end

        class CardActions < DaisyUIViewComponents::BaseComponent

          renders_many :buttons, DaisyUIViewComponents::Button::Component
          renders_many :badges, DaisyUIViewComponents::Badge::Component

          def call
            html tag: :div, **html_options.merge(class: css('card-actions')) do
              content
            end
          end

        end

      end

    end

  end
end
