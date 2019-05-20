class Listing 
    @@all = []
    attr_accessor :city
    
    def initialize(city)
        @city = city
        @@all << self
    end

    def guests

    end
end
