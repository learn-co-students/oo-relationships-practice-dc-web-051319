class Trip
  attr_reader :guest, :listing
  @@trips = []

  def initialize(listing, guest)
      @guest = guest
      @listing = listing
      @@trips << self
  end

  def self.all
      @@trips
  end
end