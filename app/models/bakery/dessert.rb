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

    def ingredients
        Ingredient.all.select{ |ing| ing.dessert == self }
    end

    def calories
        self.ingredients.each_with_object(sum = 0) do |ing| 
            sum += ing.calorie_count
        end
        sum
    end

end
