# frozen_string_literal: true

module DaisyUIViewComponents
  module Collapse
    class Component < DaisyUIViewComponents::BaseComponent

      option :open, default: proc { false }
      option :arrow, default: proc { false }

      renders_one :collapse_title, 'CollapseTitle'
      renders_one :collapse_content, 'CollapseContent'
      renders_one :checkbox, 'CollapseCheckbox'
      renders_one :radio, 'CollapseRadio'

      class CollapseRadio < DaisyUIViewComponents::BaseComponent

        def call
          html :input, type: :radio, class: css('w-auto h-auto') do
            content
          end
        end

      end

      class CollapseCheckbox < DaisyUIViewComponents::BaseComponent

        def call
          html :input, type: :checkbox, class: css('w-auto h-auto') do
            content
          end
        end

      end

      class CollapseTitle < DaisyUIViewComponents::BaseComponent

        def call
          html :h2, class: css('collapse-title text-xl font-medium') do
            content
          end
        end

      end

      class CollapseContent < DaisyUIViewComponents::BaseComponent

        def call
          html :div, class: css('collapse-content') do
            content
          end
        end

      end

      private

      def collapse_classes
        classes = %w[collapse bg-base-200]
        classes << 'collapse-open' if @open
        classes << 'collapse-arrow' if @arrow
        classes.join(' ')
      end

    end
  end
end
