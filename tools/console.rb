require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# AirBnB
spring_break = Listing.new("Cancun")

fall_break = Listing.new("DC")

molly = Guest.new("Molly")

trip1 = Trip.new(spring_break, molly)
trip2 = Trip.new(fall_break, molly)
trip2 = Trip.new(fall_break, molly)
trip2 = Trip.new(fall_break, molly)
trip2 = Trip.new(fall_break, molly)

# Bakery
bakery1 = Bakery.new()
bakery2 = Bakery.new()
bakery3 = Bakery.new()
bakery4 = Bakery.new()

dessert1 = Bakery.new()

Pry.start
