#ride belongs to a passenger and a driver
class Ride 

    attr_accessor :passenger, :driver, :distance

    @@all = []

    #ride is initialized with a distance (as a float)
    def initialize(passenger, driver, distance)
        @passenger, @driver, @distance = passenger, driver, distance
        @@all << self
    end

    def self.all
        @@all
    end

    #should find the average distance of all rides
    def self.average_distance
        distances = self.all.collect{|ride| ride = ride.distance}
        total_distance = distances.inject{|sum,n| sum + n}
        average_distance = total_distance / distances.length
        return average_distance
    end

end