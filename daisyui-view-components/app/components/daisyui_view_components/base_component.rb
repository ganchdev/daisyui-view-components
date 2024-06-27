# frozen_string_literal: true

require 'view_component'
require 'dry-initializer'

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

      @html_options.merge(opts)
    end

    def css(css_classes = '')
      if external_classes = html_options[:class]
        cn("#{external_classes} #{css_classes}")
      else
        cn(css_classes)
      end
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
      attributes = html_options.merge(opts)
      content = capture(&block) if block_given?

      # Remove all options that are used by the component
      self.class.dry_initializer.attributes(self).each_key do |key|
        attributes.delete(key)
      end

      content_tag(tag, content, **attributes)
    end

  end
end
