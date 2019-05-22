class Guest

    attr_accessor :name, :trips

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def listings
        # return all listings a guest has stayed at
        Trip.all.select {|trip| self == trip.guest}.collect{|trip| trip.listing}
    end

    def trips
        # array of all trips a guest has made
        # guest1.trips == trip1, trip4
        Trip.all.select {|trip| self == trip.guest}
    end

    def trip_count
        # returns number of trips a guest has taken
        trips.length
    end

    def self.all
        # returns an array of all guests
        @@all
    end

    def self.pro_traveller
        # returns array of guests who have
        # made more than one trip
        Guest.all.select do |guest|
            guest.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
        # returns all guests with this name
    end

end