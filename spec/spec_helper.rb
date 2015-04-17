require 'database_cleaner'
require 'mongoid'
require 'timecop'

Mongoid.load!('spec/support/mongoid.yml', :test)

DatabaseCleaner.strategy = :truncation
RSpec.configure do |config|
  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end