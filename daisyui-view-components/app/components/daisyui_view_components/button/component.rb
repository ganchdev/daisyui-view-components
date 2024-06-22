# frozen_string_literal: true

module DaisyUIViewComponents
  module Button
    class Component < DaisyUIViewComponents::BaseComponent

      prop :url
      prop :label
      prop :method
      prop :options

      # rubocop:disable Metrics/AbcSize
      # rubocop:disable Metrics/MethodLength
      def button(&block)
        @html_options[:class] = css('btn')
        options = { data: @data }

        if @url.blank?
          if @label.present?
            options = options.except(:type)

            label_tag(@label, **options, **html_options, &block)
          else
            button_tag(**options, **html_options, &block)
          end
        elsif @method.present?
          options[:method] = @method
          options[:type] = :button

          button_to(@url, **options, **html_options, &block)
        else
          link_to(@url, **options, **html_options, &block)
        end
      end
      # rubocop:enable Metrics/AbcSize
      # rubocop:enable Metrics/MethodLength

    end
  end
end
