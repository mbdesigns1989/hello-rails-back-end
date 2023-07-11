class Greeting < ApplicationRecord
  def self.random
    response.headers['Access-Control-Allow-Origin'] = '*'
    @greetings = Greeting.all
    @random = Greeting.order('RANDOM()').limit(1).first
  end
end
