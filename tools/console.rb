require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# AIRBNB
# listing1 = Listing.new("Seattle")
# listing2 = Listing.new("Boston")
# listing3 = Listing.new("Denver")

# guest1 = Guest.new("Kemunto")
# guest2 = Guest.new("Keith")
# guest3 = Guest.new("Natany")

# #trip1 = Trip.new(guest1, listing1) #Kemunto, Seattle
# trip2 = Trip.new(guest2, listing2) #Keith, Boston
# trip3 = Trip.new(guest3, listing2) #Natany, Boston
# trip4 = Trip.new(guest1, listing3) #Kemunto, Denver
# trip5 = Trip.new(guest2, listing3) #Keith, Denver
# trip6 = Trip.new(guest3, listing3) #Natany, Denver

#LYFT
passenger1 = Passenger.new
passenger2 = Passenger.new
passenger3 = Passenger.new
passenger4 = Passenger.new
passenger5 = Passenger.new
passenger6 = Passenger.new

driver1 = Driver.new
driver2 = Driver.new
driver3 = Driver.new
driver4 = Driver.new
driver5 = Driver.new
driver6 = Driver.new

ride1 = Ride.new(passenger1, driver6, 75.5)
ride2 = Ride.new(passenger6, driver5, 22.3)
ride3 = Ride.new(passenger2, driver3, 74.1)
ride4 = Ride.new(passenger5, driver2, 210)
ride5 = Ride.new(passenger4, driver4, 23.5)
ride6 = Ride.new(passenger3, driver1, 74.1)
ride7 = Ride.new(passenger6, driver1, 21.25)
ride8 = Ride.new(passenger4, driver5, 82.2)
ride9 = Ride.new(passenger2, driver2, 21.7)
ride10 = Ride.new(passenger1, driver4, 86)
ride11 = Ride.new(passenger3, driver3, 22.9)
ride12 = Ride.new(passenger5, driver6, 85.2)

#driver.rb
#----------------------------------
  #returns rides driver has made
  #driver1.rides
  #yes

  #return passengers driver has had
  #driver1.passengers
  #yes

  #show drivers who have exceeded cap
  Driver.mileage_cap(100.0)

#driver.rb
#----------------------------------
  #returns all rides a passenger has been on
  #passenger1.rides
  #yes

  #returns drivers passenger has ridden with
  #passenger1.drivers
  #yes

#ride.rb
#----------------------------------
  #find the average distance of all rides
  #Ride.average_distance
  #yes 


binding.pry
"hi"