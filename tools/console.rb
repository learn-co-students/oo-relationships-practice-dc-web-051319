require_relative '../config/environment.rb'
require_relative '../app/models/Lyft/driver.rb'
require_relative '../app/models/Lyft/passenger.rb'
require_relative '../app/models/Lyft/ride.rb'

def reload
  load 'config/environment.rb'
end


# listing1 = Listing.new("DC")
# listing2 = Listing.new("Seattle")
# listing3 = Listing.new("NYC")
# listing4 = Listing.new("ISD")
# listing5 = Listing.new("DC")
# listing6 = Listing.new("NYC")
# listing7 = Listing.new("Atlanta")
# listing8 = Listing.new("ISD")
# listing9 = Listing.new("Boston")
# listing10 = Listing.new("Honolulu")
# listing11 = Listing.new("Peru")
# listing12 = Listing.new("Barcelona")
# listing13 = Listing.new("Mexico City")
# listing14 = Listing.new("NYC")

# guest1 = Guest.new("Barbara")
# guest2 = Guest.new("Mike")
# guest3 = Guest.new("Stephen")
# guest4 = Guest.new("Carlos")
# guest5 = Guest.new("Barbara")
# guest6 = Guest.new("Stephen")
# guest7 = Guest.new("Ciara")
# guest8 = Guest.new("JT")
# guest9 = Guest.new("Hussey")
# guest10 = Guest.new("Mike")
# guest11 = Guest.new("Barbara")
# guest12 = Guest.new("Stepehn")
# guest13 = Guest.new("Hussey")


# trip1 = Trip.new(listing1, guest4)
# trip2 = Trip.new(listing2, guest1)
# trip3 = Trip.new(listing1, guest3)
# trip4 = Trip.new(listing3, guest2)
# trip5 = Trip.new(listing3, guest7)
# trip6 = Trip.new(listing10, guest5)
# trip7 = Trip.new(listing3, guest6)
# trip8 = Trip.new(listing5, guest2)
# trip9 = Trip.new(listing7, guest5)
# trip10 = Trip.new(listing4, guest1)
# trip11 = Trip.new(listing9, guest7)
# trip12 = Trip.new(listing8, guest4)
# trip13 = Trip.new(listing6, guest6)
# trip14 = Trip.new(listing2, guest3)
# trip15 = Trip.new(listing7, guest7)
# trip16 = Trip.new(listing1, guest2)
# trip17 = Trip.new(listing3, guest13)

# p1 = Passenger.new("Bruce")
# p2 = Passenger.new("Sean")
# p3 = Passenger.new("Mandy")
# d1 = Driver.new("Mike")
# d2 = Driver.new("Peter")
# d3 = Driver.new("Andrew")
# r1 = Ride.new(p1, d2, 39.80)
# r2 = Ride.new(p3, d3, 32.29)
# r3 = Ride.new(p1, d1, 15.04)
# r4 = Ride.new(p2, d1, 60.51)
# r5 = Ride.new(p1,d2, 55.00 )

bakery1 = Bakery.new("Rahat Bakery")
dessert1 = Dessert.new("Baklava", bakery1)
# d2 = Dessert.new("Sweets", bakery1)
ingredient1 = Ingredient.new("Walnuts", dessert1, 30)
ingredient2 = Ingredient.new("Butter" , dessert1, 90)



Pry.start