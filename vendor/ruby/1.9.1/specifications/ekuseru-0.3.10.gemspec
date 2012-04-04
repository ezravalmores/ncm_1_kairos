# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ekuseru"
  s.version = "0.3.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nugroho Herucahyono", "Jacob Rothstein"]
  s.date = "2011-11-20"
  s.description = "Ekuseru is a gem to generate Microsoft Excel documents with Rails. This plugin provides templating abilities to create excel documents using Spreadsheet gem."
  s.email = "xinuc@xinuc.org"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "http://github.com/xinuc/ekuseru"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "Export excel documents from Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0"])
      s.add_runtime_dependency(%q<spreadsheet>, [">= 0.6"])
    else
      s.add_dependency(%q<rails>, [">= 3.0"])
      s.add_dependency(%q<spreadsheet>, [">= 0.6"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0"])
    s.add_dependency(%q<spreadsheet>, [">= 0.6"])
  end
end
