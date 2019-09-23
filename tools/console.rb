require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



car_owner1 = CarOwner.new("John")
car_owner2 = CarOwner.new("Sara")
car_owner3 = CarOwner.new("Mac")


# Mechanics

mechanic1 = Mechanic.new("Tom", "antique")
mechanic2 = Mechanic.new("Jason", "exotic")
mechanic3 = Mechanic.new("Mike", "exotic")
mechanic4 = Mechanic.new("Paul", "clunker")

# Cars
car1 = Car.new("Porche", "Carrera", "exotic", car_owner1, mechanic2)
car2 = Car.new("Lamborgini", "Huracen", "exotic", car_owner1, mechanic3)
car3 = Car.new("Ford", "Mustang", "antique", car_owner2, mechanic1)
car4 = Car.new("Chevy", "Corvette", "exotic", car_owner3, mechanic1)




binding.pry
