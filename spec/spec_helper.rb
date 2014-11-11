require "rubygems"
require "factory_girl"

require_relative '../lib/models/user'
require_relative '../spec/factories/users.rb'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
