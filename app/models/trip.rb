class Trip
    @@all = []
    attr_accessor :listing, :guest
    def initialize(listing, guest) 
        @listing = listing
        @guest =  guest
        @@all << self
    end

    def listing 
        self.listing
    end

    def guest
        self.guest
    end

    def self.all
        @@all
    end

end
