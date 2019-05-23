class Listing    
  attr_accessor :city
  @@listings = []

  def initialize(city)
    @city = city
    @@listings << self
  end

  def guests
      self.trips.collect { |trip| trip.guest.name }
  end

  def trips
      Trip.all.select { |trip| trip.listing == self } 
  end

  def trip_count
    trips.count
  end

  def self.all
    @@listings
  end

  def self.find_all_by_city(city)
    @@listings.select { |listing| listing.city == city }
  end

  def self.most_popular
    @@listings.max_by do |listing|
           listing.trip_count
       end
  end
end