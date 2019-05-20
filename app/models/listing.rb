require "pry"

class Listing

  attr_reader :city, :guest

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
  my_trips = Trip.all.select do |trip|
      trip.listing == self
    end
    my_trips.collect do |trip|
      trip.guest
    end
  end

  def trips
    my_trips = Trip.all.select do |trip|
        trip.listing == self
      end
  end

  def trip_count
    self.trips.count
  end

  def self.find_all_by_city(city)
    Listing.all.select do |listing|
      listing.city == city
    end
  end

# binding.pry

  def self.most_popular
    count = {}
    Trip.all.each do |trip|
            #count number of trip in each listing
      if count[trip.listing.city]
        count[trip.listing.city] += 1
      else
        count[trip.listing.city] = 1
      end
    end
    count.max_by {|key, value| value}[0]
#    count.key(count.values.max)
  end


end
