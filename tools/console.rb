require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Pry.start

spring_break = Listing.new("Cancun")

molly = Guest.new("Molly")

trip1 = Trip.new(spring_break, molly)

p trip1
