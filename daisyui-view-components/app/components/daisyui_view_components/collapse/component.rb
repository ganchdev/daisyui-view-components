# frozen_string_literal: true

module DaisyUIViewComponents
  module Collapse
    class Component < DaisyUIViewComponents::BaseComponent

      prop :open
      prop :arrow

      renders_one :collapse_title, 'CollapseTitle'
      renders_one :collapse_content, 'CollapseContent'
      renders_one :checkbox, 'CollapseCheckbox'
      renders_one :radio, 'CollapseRadio'

      class CollapseRadio < DaisyUIViewComponents::BaseComponent

        def call
          html tag: :input, **html_options.merge(type: :radio, class: css('w-auto h-auto')) do
            content
          end
        end

      end

      class CollapseCheckbox < DaisyUIViewComponents::BaseComponent

        def call
          html tag: :input, **html_options.merge(type: :checkbox, class: css('w-auto h-auto')) do
            content
          end
        end

      end

      class CollapseTitle < DaisyUIViewComponents::BaseComponent

        def call
          html tag: :h2, **html_options.merge(class: css('collapse-title text-xl font-medium')) do
            content
          end
        end

      end

      class CollapseContent < DaisyUIViewComponents::BaseComponent

        def call
          html tag: :div, **html_options.merge(class: css('collapse-content')) do
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
