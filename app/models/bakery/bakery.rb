class Bakery

    @@all = []


    def initialize()
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select{ |dessert| dessert.bakery == self }
    end

    def ingredients
        self.desserts.map{ |dessert| dessert.ingredients }.flatten
    end

    def average_calories
        cal_array = self.desserts.map{ |dessert| dessert.calories } 
        cal_array.inject{ |sum, cal| sum + cal }.to_f / cal_array.size
    end

    def shopping_list
        self.ingredients.map{ |ing| ing.name}.join(" ")
    end

end
