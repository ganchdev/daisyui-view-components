# frozen_string_literal: true

module DaisyUIViewComponents
  module Table
    class Component < DaisyUIViewComponents::BaseComponent

      SIZE_CLASSES = {
        xs: 'table-xs',
        sm: 'table-sm',
        md: 'table-md',
        lg: 'table-lg'
      }.freeze

      SIZE_OPTIONS = SIZE_CLASSES.keys.freeze

      option :zebra, optional: true
      option :size, optional: true, desc: SIZE_OPTIONS, type: proc(&:to_sym)

      css_classes 'table' do |classes|
        classes << 'table-zebra' if zebra
        classes << SIZE_CLASSES[size] if size
      end

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
            html :tr, class: css(hover ? 'hover' : '') do
              cells.each do |cell|
                concat cell
              end
            end
          end

        end

      end

    end
  end
end
