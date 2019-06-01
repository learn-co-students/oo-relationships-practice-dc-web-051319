class Driver
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def passengers
        rides.collect do |ride|
            ride.passenger
        end
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end        
    end

    def total_distance
        total = 0
        rides.each do |ride|
            total += ride.distance
        end  
        total     
    end

    def self.mileage_cap(distance)
       self.all.select do |driver|
        driver.total_distance > distance
       end
    end

    def self.all
        @@all
    end
end