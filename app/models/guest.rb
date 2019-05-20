class Guest

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def listings

    my_listings = Trip.all.select do |trip|
        trip.guest == self
      end
      my_listings.collect do |guest|
        guest.listing
      end
  end

  def trips

    guest_trips = Trip.all.select do |trip|
        trip.guest == self
      end

  end

  def trip_count
    self.trips.count
  end

  def self.all
    @@all
  end

  def self.pro_traveller
    pro = []
    Guest.all.each do |guest|
      if guest.trip_count > 1
        pro << guest
      else
      end
    end
    pro
  end

  def self.find_all_by_name(name)
    Guest.all.select do |guest|
      guest.name == name
    end
  end

end
