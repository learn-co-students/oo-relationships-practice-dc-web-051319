 class Ride
    attr_reader :passenger, :driver, :distance
    @@all = []
    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end
    
    def self.average_distance
        total = 0
        Ride.all.each do |ride|
            total += ride.distance
        end
        number_rides = Ride.all.count
        average = total / number_rides
        average
    end

    def self.all
        @@all
    end
 end