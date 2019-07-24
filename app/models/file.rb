# create files for your ruby classes in this directory
require 'pry'

class Listing

    @@all = []

    attr_accessor :city, :trips, :guests

    def initialize(city)
        @city = city

        @@all << self
    end

    #returns an array of all guests who have stayed at a listing
    def guests
        @guests = trips.select do |trip|
            trip.guest
        end
    end

    #returns an array of all trips at a listing
    def trips
        @trips = Trip.all.select do |trip|
            trip.listing == self
        end
    end

    #returns the number of trips that have been taken to that listing
    def trip_count
        self.trips.length
    end

    #returns an array of all listings
    def self.all
        @@all
    end

    #takes an argument of a city name (as a string)
    #and returns all the listings for that city
    def self.find_all_by_city(city)
        @@all.select do |item|
            item.city.to_s == city
        end
    end

    #finds the listing that has had the most trips
    def self.most_popular
        trips = 0

        @@all.each do |item|
            if item.trips_count > trips
                trips = item.trips_count
            end
        end
    end
end


class Guest

    attr_accessor :listings, :username, :trips
    @@all = []

    def intialize(username)
        @username = username

        @@all << self
    end

    #returns an array of all trips a guest has made
    def trips
        @trips = Trip.all.select do |trip|
            trip.guest == self
        end
    end

    #returns an array of all listings a guest has stayed at
    def listings
        @listings = trips.select do |trip|
            trip.listings
        end
    end

    #returns the number of trips a guest has taken
    def trip_count
        return self.trips.length
    end

    #returns an array of all guests
    def self.all
        @@all
    end

    #returns an array of all guests who have made over 1 trip
    def self.pro_traveller
        pro_travellers = []

        @@all.each do |item|
            if item.trip_count > 1
                pro_travellers << item.username
            end
        end
        return pro_travellers
    end

    #takes an argument of a name (as a string),
    #returns the all guests with that name
    def self.find_all_by_name(name)
        @@all.select do |item|
            item.name.to_s == name
        end
    end
end


class Trip #a trip is initialized with a listing and a guest

    attr_accessor :listings, :guests, :guest, :listing

    @@all = []
    @guests = []
    @listings = []

    def if_nil(array,item)
        if array == nil
            array = []
            array << item
        else
            array << item
        end
    end


    def initialize(listing, guest)
        @guests = if_nil(self.guests,guest)
        @listings = if_nil(self.listings,listing)

        @listing = listing
        @guest = guest

        @@all << self
    end

    #returns the listing object for the trip
    def listing
        @listing
    end

    #returns the guest object for the trip
    def guests
        @guests
    end

    #returns an array of all trips
    def self.all
        @@all
    end
end

listing1 = Listing.new("annanndale")
listing2 = Listing.new("Tokyo")
guest1 = Guest.new("traveller")

trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest1)

puts "----------------------"

puts "number of trips: #{guest1.trip_count}"
puts "pro travellers: #{Guest.pro_traveller}"

puts "----------------------"

#binding.pry


