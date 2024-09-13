# frozen_string_literal: true

module DaisyUIViewComponents
  module Table
    class Component < DaisyUIViewComponents::BaseComponent

      RESPONSIVE_CLASSES = {
        xs: 'table-xs',
        sm: 'table-sm',
        md: 'table-md',
        lg: 'table-lg'
      }.freeze

      RESPONSIVE_OPTIONS = RESPONSIVE_CLASSES.keys.freeze

      option :zebra, optional: true
      option :responsive, optional: true, desc: RESPONSIVE_OPTIONS, type: proc(&:to_sym)

      renders_one :head, 'Head'
      renders_one :body, 'Body'
      renders_one :footer

      class Cell < DaisyUIViewComponents::BaseComponent

        option :tag

        def call
          html tag do
            content
          end
        end

      end

      class Head < DaisyUIViewComponents::BaseComponent

        renders_many :cells, lambda { |*args, **kwargs, &block|
          DaisyUIViewComponents::Table::Component::Cell.new(*args, tag: :th, **kwargs, &block)
        }

        def call
          html :thead do
            content_tag :tr do
              cells.each do |cell|
                concat cell
              end
            end
          end
        end

      end

      class Body < DaisyUIViewComponents::BaseComponent

        renders_many :rows, 'Row'

        def call
          html :tbody do
            rows.each do |row|
              concat row
            end
          end
        end

        class Row < DaisyUIViewComponents::BaseComponent

          option :hover, optional: true

          renders_many :cells, lambda { |*args, **kwrags, &block|
            DaisyUIViewComponents::Table::Component::Cell.new(*args, tag: :td, **kwrags, &block)
          }

          def call
            html :tr, class: css(css_classes) do
              cells.each do |cell|
                concat cell
              end
            end
          end

          private

          def css_classes
            hover ? 'hover' : ''
          end

        end

      end

      private

      def css_classes
        classes = ['table']
        classes << 'table-zebra' if zebra
        classes << RESPONSIVE_CLASSES[responsive] if responsive
        classes.join(' ')
      end

    end
  end
end
