require 'simplecov'
if ENV["COVERAGE"]
  SimpleCov.start do
    puts "Adding simplecov"
    enable_coverage :branch
    primary_coverage :branch
  end
end

require 'date'
require 'kwalify'
require 'rspec'
