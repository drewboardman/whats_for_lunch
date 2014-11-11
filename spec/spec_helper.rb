require "rubygems"
require "factory_girl"

require_relative '../lib/models/user'
require_relative '../lib/models/visit'
require_relative '../lib/models/rating'
require_relative '../lib/models/restaurant'
require_relative '../spec/factories/restaurants.rb'
require_relative '../spec/factories/ratings.rb'
require_relative '../spec/factories/visits.rb'
require_relative '../spec/factories/users.rb'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
