# frozen_string_literal: true

require 'view_component'
require 'dry-initializer'

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength
module DaisyUIViewComponents
  class BaseComponent < ViewComponent::Base

    extend Dry::Initializer[undefined: false]

    def initialize(text = nil, **opts)
      @_text = text
      @html_options = opts

      super(**opts)
    end

    def content
      super || @_text
    end

    def html_options(**opts)
      if opts[:class]
        original = @html_options[:class]
        @html_options[:class] = [opts.delete(:class)]
        @html_options[:class] << original if original
      end

      # Remove all options that are used by the component
      self.class.dry_initializer.attributes(self).each_key do |key|
        @html_options.delete(key)
      end

      @html_options.merge(opts)
    end

    # Html wrapper for components that render
    # tags with given html attributes and content.
    # It makes it easy to pass html options around
    # without always having to merge them.
    #
    # @param tag [Symbol] the tag to render
    # @param opts [Hash] the html attributes to render
    # @param block [Proc] the content to render
    # @return [String] the rendered html
    def html(tag, **opts, &block)
      opts = opts.merge(class: css_classes) if defined?(classes)
      attributes = html_options.merge(opts)

      content = capture(&block) if block

      content_tag(tag, content, **attributes)
    end

    def css(css_classes = '')
      if external_classes = html_options[:class]
        cn("#{external_classes} #{css_classes}")
      else
        cn(css_classes)
      end
    end

    def self.css_classes(base, **modifiers, &block)
      cattr_accessor :classes

      self.classes ||= {}

      if block_given?
        self.classes[self] = {
          base: base,
          modifiers: block
        }
      else
        self.classes[self] = {
          base: base,
          modifiers: modifiers[:with]
        }
      end
    end

    # Sets css classes for a component
    # based on what the base class is
    # and what modifiers were passed to the
    # class method above. It is used within
    # the html wrapper but could also be used
    # on its own when necessary.
    #
    # @return [String]
    def css_classes
      component_classes = classes[self.class]
      css_classes = Array(component_classes[:base])
      modifiers = component_classes[:modifiers]

      case modifiers
      when Proc
        # Execute the proc in the context of the instance
        instance_exec(css_classes, &modifiers)
      when Array, Symbol
        Array(modifiers).each do |modifier|
          modifier_value = public_send(modifier)
          next if modifier_value.nil?

          css_classes << self.class.const_get("#{modifier}_classes".upcase)[modifier_value]
        rescue NameError
          # Fallback for boolean modifiers
          css_classes << modifier.to_s.gsub('_', '-') if public_send(modifier)
        end
      end

      css(css_classes.join(' '))
    end

  end
end
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength
