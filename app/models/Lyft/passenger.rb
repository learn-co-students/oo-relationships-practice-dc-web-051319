class Passenger
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        rides.collect do |ride| 
            ride.driver
       end
    end
        
    def total_distance
        total = 0
        rides.each do |ride|
            total += ride.distance
        end  
        total
    end

    def self.premium_members
       self.all.select do |passenger|
            passenger.total_distance > 100
       end
    end

    def self.all
        @@all 
    end
end
 