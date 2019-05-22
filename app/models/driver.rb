#driver has many rides
class Driver 

    @@all = []

    def initialize
        @@all << self
    end

    #returns all rides a driver has made
    def rides
        Ride.all.select{|trip| trip.driver == self}
    end

    #returns all passengers a driver has had
    def passengers
        self.rides.collect{|ride| ride = ride.passenger }
    end

    #returns an array of all drivers
    def self.all
        @@all
    end

    def total_distance
        rides = self.rides.collect{|ride| ride = ride.distance}
        rides.inject{|sum,n| sum + n}
    end

    #takes an argument of a distance (float) 
    #and returns all drivers who have exceeded 
    #that mileage
    def self.mileage_cap(distance)
        self.all.select{|name| name.total_distance > distance}
    end

end