class Dessert
    attr_reader :name, :bakery
    @@all = []
    def initialize(name, bakery)
        @name = name 
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end
    
    def ingredients
        # ingredients = []
        Ingredient.all.select do |ingredient|
            ingredient
        end        
    end

end 