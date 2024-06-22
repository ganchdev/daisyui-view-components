# frozen_string_literal: true

module DaisyUIViewComponents
  module Helpers
    module Component

      def component(name, content = nil, **kwargs, &block)
        component = DaisyUIViewComponents::Cache.find(name)

        if (collection = kwargs.delete(:collection))
          component = component.with_collection(collection, **kwargs)
          render(component, &block)
        elsif content.present?
          component = component.new(content, **kwargs)
        else
          component = component.new(**kwargs)
        end

        render(component, &block)
      end

      def cn(*inputs)
        normalized = inputs.flat_map do |input|
          if input.is_a?(Array)
            input.flatten
          else
            input
          end
        end.compact.join(' ')

        DaisyUIViewComponents::TailwindMerger.merge(normalized)
      end

    end
  end
end
