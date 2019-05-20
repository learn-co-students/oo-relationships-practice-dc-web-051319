require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

listing1 = Listing.new("Boston")
guest1 = Guest.new("Johnny")
trip1 = Trip.new(guest1,listing1)

listing2 = Listing.new("New Haven")
guest2 = Guest.new("Mary")
trip2 = Trip.new(guest2,listing2)

guest3 = Guest.new("Frank")
trip3 = Trip.new(guest3,listing2)

guest4 = Guest.new("Jim")
trip4 = Trip.new(guest4, listing2)

trip5 = Trip.new(guest1, listing2)

Pry.start
