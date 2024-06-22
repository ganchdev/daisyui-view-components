# frozen_string_literal: true

require 'view_component'

module DaisyUIViewComponents
  class BaseComponent < ViewComponent::Base

    class << self

      def prop(name)
        props << name
      end

      def props
        @props ||= []
      end

    end

    def initialize(text = nil, **opts)
      @_text = text
      props = opts.extract!(*self.class.props)
      props.each do |name, value|
        instance_variable_set(:"@#{name}", value)
        self.class.send(:attr_reader, name)
      end

      @html_options = opts
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

    def html(**opts, &block)
      content = capture(&block) if block_given?
      tag = opts.delete(:tag)

      content_tag(tag, content, **opts)
    end

    # A wrapper for components that renders a
    # tag with given html attributes and content
    #
    # @param tag [Symbol] the tag to render
    # @param opts [Hash] the html attributes to render
    # @param block [Proc] the content to render
    # @return [String] the rendered html
    def wrapper(tag, **opts, &block)
      opts[:tag] = tag
      wrapper_options = html_options.merge(opts)

      html(**wrapper_options, &block)
    end

  end
end
