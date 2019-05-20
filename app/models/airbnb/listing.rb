class Listing 
    @@all = []
    attr_accessor :city
    
    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def guests
        self.trips.map{ |trip| trip.guest}
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def trip_count
        self.trips.length
    end

    def self.most_popular

        self.all.each_with_object(popular = [nil, 0]) do |listing|
            if listing.trip_count > popular[1] 
                popular[0] = listing
                popular[1] = listing.trip_count
            end
        end
        popular[0]
    end

    def self.find_all_by_city(city)
        self.all.select do |city|
            city.name == name
        end
    end
end
