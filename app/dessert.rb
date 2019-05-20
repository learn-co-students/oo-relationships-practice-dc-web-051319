class Dessert
    @@all = []

    attr_reader :bakery

    def initialize(bakery)
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end
end