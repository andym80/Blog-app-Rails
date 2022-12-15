# -*- encoding: utf-8 -*-
# stub: composite_primary_keys 14.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "composite_primary_keys".freeze
  s.version = "14.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Charlie Savage".freeze]
  s.date = "2022-02-13"
  s.description = "Composite key support for ActiveRecord".freeze
  s.homepage = "https://github.com/composite-primary-keys/composite_primary_keys".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Composite key support for ActiveRecord".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activerecord>.freeze, ["~> 7.0.2"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activerecord>.freeze, ["~> 7.0.2"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
