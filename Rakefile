# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "state_shifter"
  gem.homepage = "http://github.com/sardaukar/state_shifter"
  gem.license = "MIT"
  gem.summary = %Q{state_shifter is a gem that adds state machine behavior to a class}
  gem.description = %Q{state_shifter is a gem that adds state machine behavior to a class}
  gem.email = "sardaukar.siet@gmail.com"
  gem.authors = ["Bruno Antunes"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  ENV['COVERAGE'] = 'true'
  spec.pattern = 'spec/**/*_spec.rb'
end

task :default => :rcov

require 'yard'
YARD::Rake::YardocTask.new
