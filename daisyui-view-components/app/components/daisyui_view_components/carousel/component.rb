# frozen_string_literal: true

module DaisyUIViewComponents
  module Carousel
    class Component < DaisyUIViewComponents::BaseComponent

      option :carousel_center, default: proc { false }, desc: 'Snap elements to center'
      option :carousel_end, default: proc { false }, desc: 'Snap elements to end'
      option :carousel_vertical, default: proc { false }, desc: 'Vertical carousel'

      renders_many :items, 'CarouselItem'

      def call
        html :div, class: css_classes do
          items.each do |item|
            concat item
          end
        end
      end

      class CarouselItem < DaisyUIViewComponents::BaseComponent

        def call
          html :div, class: css('carousel-item') do
            content
          end
        end

      end

      private

      def css_classes
        classes = ['carousel']
        classes << 'carousel-center' if carousel_center
        classes << 'carousel-end' if carousel_end
        classes << 'carousel-vertical' if carousel_vertical

        css(classes.join(' '))
      end

    end
  end
end
