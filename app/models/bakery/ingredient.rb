class Ingredient
    @@all = []
    attr_reader :name
    attr_accessor :calorie_count, :dessert

    def initialize(name, dessert, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @dessert = dessert
        @@all << self
    end


    def self.all
        @@all
    end 

    def self.find_all_by_name(string)
        self.all.select do |ingredient|
            ingredient.name.include?(string)
        end
    end

    def bakery
        self.dessert.bakery
    end

end
