require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name        = "classifier"
    s.summary     = "A general classifier module to allow Bayesian and other types of classifications."
    s.description = "Bayesian classifier and others."
    s.homepage    = "http://github.com/reasonbock/classifier"
    s.author      = "reasonbock"
    s.email       = "michael@reasonbock.com"

    s.add_dependency "activesupport", ">= 2.2.2"
    s.add_dependency "ruby-stemmer", ">= 0.5.1"
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
