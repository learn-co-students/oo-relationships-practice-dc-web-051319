class Bakery
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.calorie_count
        end
    end

    def desserts
        Dessert.all.collect do |dessert|
            dessert
        end
    end
end  