# frozen_string_literal: true

require 'rails/engine'
require 'daisyui_view_components'

module DaisyUIViewComponents
  class Engine < ::Rails::Engine

    isolate_namespace DaisyUIViewComponents

    config.autoload_paths << "#{config.root}/lib"
    config.eager_load_paths << "#{config.root}/app/components"

    initializer 'daisyui_view_components.assets' do |app|
      app.config.assets.precompile += %w[daisyui_view_components] if app.config.respond_to?(:assets)
    end

    initializer 'daisyui_view_components.inflections' do
      inflector = Rails.autoloaders.main.inflector
      inflector.inflect('daisyui_view_components' => 'DaisyUIViewComponents')
    end

    initializer 'daisyui_view_components.include_helpers' do
      ActiveSupport::Reloader.to_prepare do
        ActionView::Base.include DaisyUIViewComponents::Helpers::Component
      end
    end

  end
end
