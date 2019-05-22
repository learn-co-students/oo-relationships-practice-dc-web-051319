class Listing
    # has many trips

    attr_accessor :city, :trips
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def guests
        # returns array of all guests who
        # have stayed at listing
        
    end

    def trips
        # returns array of all trips at listing

    end

    def trip_count
        # returns number of trips that have
        # been taken to that listing
    end

    def self.all
        # returns array of all listings
        @@all
    end

    def self.find_all_by_city(city)
        # returns all listings for that city
        self.all.find_all { |listing| listing.city == city }
    end

    def self.most_popular
        #finds the listing that has the most trips
        
    end
end