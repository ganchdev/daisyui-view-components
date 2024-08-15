# frozen_string_literal: true

module DaisyUIViewComponents
  module Label
    class Component < DaisyUIViewComponents::BaseComponent

      renders_one :label_text, lambda { |content = '', css: 'label-text', &block|
        content_tag :span, content, class: css, &block
      }
      renders_one :label_text_alt, lambda { |content = '', css: 'label-text-alt', &block|
        content_tag :span, content, class: css, &block
      }

      def call
        html :div, class: css('label') do
          content
        end
      end

    end
  end
end
