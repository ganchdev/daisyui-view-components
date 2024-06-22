# frozen_string_literal: true

require "rails/application_controller"

class PreviewController < ViewComponentsController

  helper Lookbook::PreviewHelper if defined?(Lookbook)

end
