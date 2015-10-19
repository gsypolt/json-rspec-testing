require 'rspec'
require 'json'
require 'json_spec'

RSpec.configure do |config|

  config.include JsonSpec::Helpers

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
