# frozen_string_literal: true

module DaisyUIViewComponents
  module Cache

    class << self

      def component_cache
        @component_cache ||= {}
      end

      def namespaces
        @namespaces ||= ['']
      end

      def append_namespace(namespace)
        namespaces << namespace
      end

      def find(name)
        if (component_class = component_cache[name])
          return component_class
        end

        class_names = %W[
          DaisyUIViewComponents::#{name.to_s.camelize}::Component
          #{name.to_s.camelize}ViewComponent::Component
        ]

        namespaces.each do |namespace|
          class_names.each do |class_name|
            component_class = "#{namespace}::#{class_name}".constantize
            component_cache[name] = component_class unless Rails.env.development?
            return component_class
          rescue NameError
            # skip
          end
        end

        checked_constants = namespaces.map do |ns|
          class_names.map { |cn| "#{ns}::#{cn}" }
        end.flatten

        raise "No component named '#{name}' could be found (looked in #{checked_constants.join(', ')})"
      end

    end

  end
end
