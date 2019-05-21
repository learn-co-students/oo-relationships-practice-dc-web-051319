class Guest
    @@guests = []
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @@guests << self
    end

    def listings
      self.trips.collect { |trip| trip.listing.city }
    end 

    def trips
      Trip.all.select { |trip| trip.guest == self }
    end

    def trip_count
      trips.count
    end

    def self.pro_traveller
      @@guests.select { |guest| guest.trip_count > 1 }
    end

    def self.find_all_by_name(name)
      @@guests.select { |guest| guest.name == name }
    end

    def self.all
        @@guests
    end
end