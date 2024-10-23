# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'daisyui_view_components/version'

# rubocop:disable Gemspec/RequireMFA
Gem::Specification.new do |s|
  s.name          = 'daisyui-view-components'
  s.description   = 'A view component library for Daisy UI'
  s.summary       = s.description
  s.required_ruby_version = '>= 2.7'
  s.homepage      = 'https://github.com/ganchdev/daisyui-view-components'
  s.version       = DaisyUIViewComponents::VERSION
  s.files = Dir[
    'CHANGELOG.md',
    'LICENSE.txt',
    'daisyui-view-components/README.md',
    'daisyui-view-components/app/**/*',
    'daisyui-view-components/lib/**/*',
    'daisyui-view-components/previews/**/*',
  ]
  s.require_paths = ['daisyui-view-components/lib']
  s.authors       = ['Georgi Ganchev']
  s.licenses      = ['MIT']
  s.add_dependency 'actionview', '>= 5.0'
  s.add_dependency 'activesupport', '>= 5.0'
  s.add_dependency 'dry-initializer', '~> 3.1'
  s.add_dependency 'tailwind_merge', '>= 0.8.1'
  s.add_dependency 'view_component', '>= 3.0'
end
# rubocop:enable Gemspec/RequireMFA
