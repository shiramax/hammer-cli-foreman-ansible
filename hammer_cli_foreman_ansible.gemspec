lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hammer_cli_foreman_ansible/version'

Gem::Specification.new do |spec|
  spec.name          = 'hammer_cli_foreman_ansible'
  spec.version       = HammerCLIForemanAnsible::VERSION
  spec.authors       = ['Oleh Fedorenko']
  spec.email         = ['ofedoren@redhat.com']
  spec.homepage      = 'https://github.com/theforeman/hammer-cli-foreman-ansible'
  spec.license       = 'GPL-3.0'

  spec.platform      = Gem::Platform::RUBY
  spec.summary       = 'Foreman Ansible plugin for Hammer CLI'

  spec.files         = Dir['{lib,config,locale}/**/*', 'LICENSE', 'README*']
  spec.require_paths = ['lib']
  spec.test_files    = Dir['{test}/**/*']

  spec.add_dependency 'hammer_cli_foreman', '>= 0.12.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
