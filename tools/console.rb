require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# AirBnB
spring_break = Listing.new("Cancun")

fall_break = Listing.new("DC")

molly = Guest.new("Molly")

trip1 = Trip.new(spring_break, molly)
trip2 = Trip.new(fall_break, molly)
trip2 = Trip.new(fall_break, molly)
trip2 = Trip.new(fall_break, molly)
trip2 = Trip.new(fall_break, molly)

# Bakery
bakery1 = Bakery.new()
bakery2 = Bakery.new()
bakery3 = Bakery.new()
bakery4 = Bakery.new()

dessert1 = Dessert.new(bakery1)
dessert2 = Dessert.new(bakery2)
dessert3 = Dessert.new(bakery2)
dessert4 = Dessert.new(bakery3)
dessert5 = Dessert.new(bakery3)
dessert6 = Dessert.new(bakery3)
dessert7 = Dessert.new(bakery4)

ingredient1 = Ingredient.new("Name", dessert1, 10)
ingredient2 = Ingredient.new("Name", dessert1, 20)
ingredient3 = Ingredient.new("Name", dessert2, 40)
ingredient4 = Ingredient.new("Name", dessert3, 150)
ingredient5 = Ingredient.new("Name", dessert4, 120)
ingredient6 = Ingredient.new("Name", dessert5, 130)
ingredient7 = Ingredient.new("Name", dessert5, 130)
ingredient8 = Ingredient.new("Name", dessert6, 120)
ingredient9 = Ingredient.new("Name", dessert7, 150)
ingredient10 = Ingredient.new("Name", dessert7, 110)
ingredient11 = Ingredient.new("Blueberries", dessert1, 190)

p "Returns all instances of Bakery, Dessert, and Ingredient"
p Bakery.all.length == 4 && Dessert.all.length == 7 && Ingredient.all.length == 11

# Gym
ash = Trainer.new("Ash")
gary = Trainer.new("Gary")
sabrina = Trainer.new("Sabrina")

pallet = Location.new("Pallet Town")
saffron = Location.new("Saffron City")

join1 = Train_Loc.new(ash, pallet)
join2 = Train_Loc.new(gary, pallet)
join3 = Train_Loc.new(sabrina, saffron)

pikachu = Client.new("Pikachu")
pikachu.assign_trainer(ash)

eevee = Client.new("Eevee")
eevee.assign_trainer(gary)

charmander = Client.new("Charmander")
charmander.assign_trainer(ash)

p Location.least_clients
