# frozen_string_literal: true

require_relative 'lib/daisyui_view_components/version'

# rubocop:disable Gemspec/RequireMFA
Gem::Specification.new do |s|
  s.name          = 'daisyui-view-components'
  s.description   = 'A view component library for Daisy UI'
  s.summary       = s.description
  s.required_ruby_version = '>= 2.7'
  s.homepage      = 'https://github.com/naft-a/daisyui-view-components'
  s.version       = DaisyUIViewComponents::VERSION
  s.files = Dir[
    'CHANGELOG.md',
    'LICENSE.txt',
    'README.md',
    'app/**/*',
    'lib/**/*',
    'previews/**/*',
  ]
  s.require_paths = ['lib']
  s.authors       = ['Georgi Ganchev']
  s.email         = ['ganchev.georgi@yahoo.com']
  s.licenses      = ['MIT']
  s.add_runtime_dependency 'actionview', '>= 5.0'
  s.add_runtime_dependency 'activesupport', '>= 5.0'
  s.add_runtime_dependency 'dry-initializer', '~> 3.1'
  s.add_runtime_dependency 'tailwind_merge', '>= 0.8.1'
  s.add_runtime_dependency 'view_component', '>= 3.0'
end
# rubocop:enable Gemspec/RequireMFA
