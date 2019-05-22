# passenger has many rides
class Passenger

    attr_accessor :name

    @@all = []

    def initialize
        @@all << self
    end

    #returns all rides a passenger has been on
    def rides
        Ride.all.select{|trip| trip.passenger == self}
    end

    #returns all drivers a passenger has ridden with
    def drivers
        self.rides.collect{|ride| ride = ride.driver }
    end

    #returns an array of all passengers
    def self.all
        @@all
    end

    #should calculate the total distance the passenger 
    #has travelled with the service
    def total_distance
        rides = self.rides.collect{|ride| ride = ride.distance}
        rides.inject{|sum,n| sum + n}
    end

    #should find all passengers who have travelled over 
    #100 miles with the service
    def self.premium_members
        self.all.select{|name| name.total_distance > 100}
    end

end