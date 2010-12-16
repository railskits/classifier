# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{classifier}
  s.version = "1.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["reasonbock"]
  s.date = %q{2010-12-16}
  s.description = %q{Bayesian classifier and others.}
  s.email = %q{michael@reasonbock.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.homepage = %q{http://github.com/reasonbock/classifier}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A general classifier module to allow Bayesian and other types of classifications.}
  s.test_files = [
    "test/base_test.rb",
    "test/bayes/bayesian_test.rb",
    "test/lsi/lsi_test.rb",
    "test/stopwords_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_runtime_dependency(%q<ruby-stemmer>, [">= 0.5.1"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_dependency(%q<ruby-stemmer>, [">= 0.5.1"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.2.2"])
    s.add_dependency(%q<ruby-stemmer>, [">= 0.5.1"])
  end
end

