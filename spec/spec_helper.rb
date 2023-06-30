require 'date'
require 'kwalify'
require 'rspec'

ROOT = File.expand_path(File.join(__dir__,'..'))

RSpec::Matchers.define :match_array_with_extra_elements do |expected|
  match do |actual|
    extra_elements = expected.each { |e| actual.delete(e) }
    if extra_elements.empty?
      true
    else
      RSpec::Expectations.fail_with("Extra elements found: #{extra_elements}")
    end
  end
end
