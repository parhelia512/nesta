# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'nesta/version'

Gem::Specification.new do |s|
  s.name        = 'nesta'
  s.version     = Nesta::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Graham Ashton']
  s.email       = ['graham@effectif.com']
  s.homepage    = 'https://nestacms.com'
  s.summary     = %q{Ruby CMS, written in Sinatra}
  s.description = <<-EOF
Nesta is a lightweight Content Management System, written in Ruby using
the Sinatra web framework. Nesta has the simplicity of a static site
generator, but (being a fully fledged Rack application) allows you to
serve dynamic content on demand.

Content is stored on disk in plain text files (there is no database).
Edit your content in a text editor and keep it under version control
(most people use git, but any version control system will do fine).

Implementing your site's design is easy, but Nesta also has a small
selection of themes to choose from.
  EOF

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency('haml', '>= 3.1', '< 6.0')
  s.add_dependency('haml-contrib', '>= 1.0')
  s.add_dependency('rack', '~> 3')
  s.add_dependency('rake')
  s.add_dependency('rdiscount', '~> 2.1')
  s.add_dependency('RedCloth', '~> 4.2')
  s.add_dependency('sass-embedded', '~> 1.58')
  s.add_dependency('sinatra', '~> 4.0')
  s.add_dependency('tilt', '~> 2.1')

  # Useful in development
  s.add_development_dependency('mr-sparkle')

  # Test libraries
  s.add_development_dependency('byebug')
  s.add_development_dependency('capybara', '~> 2.0')
  s.add_development_dependency('minitest', '~> 5.0')
  s.add_development_dependency('minitest-reporters')
end
