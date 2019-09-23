require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("owner_name1")
owner2 = CarOwner.new("owner_name2")
owner3 = CarOwner.new("owner_name3")
owner4 = CarOwner.new("owner_name4")
owner5 = CarOwner.new("owner_name5")

car1 = Car.new("make1", "model1", "Sedan", owner1)
car6 = Car.new("make6", "model6", "Sport", owner1)
car11 = Car.new("make11", "model11", "Van", owner1)


car2 = Car.new("make2", "model2", "Compact", owner2)
car3 = Car.new("make3", "model3", "Compact", owner2)
car4 = Car.new("make4", "model4", "Hybrid", owner3)
car5 = Car.new("make5", "model5", "Muscle", owner5)

car7 = Car.new("make7", "model7", "Minivan", owner4)
car8 = Car.new("make8", "model8", "Exotic", owner5)
car9 = Car.new("make9", "model9", "Pickup", owner5)
car10 = Car.new("make10", "model10", "Wagon", owner5)

car12 = Car.new("make12", "model12", "Hatchback", owner3)
car13 = Car.new("make13", "model13", "Convertible", owner3)
car14 = Car.new("make14", "model14", "Coupe", owner5)
car15 = Car.new("make15", "model15", "Compact", owner5)



mechanic1 = Mechanic.new("mechanic1_name", "Compact")
mechanic2 = Mechanic.new("mechanic2_name", "Sedan")
mechanic3 = Mechanic.new("mechanic3_name", "Van")
mechanic4 = Mechanic.new("mechanic4_name", "Wagon")
mechanic5 = Mechanic.new("mechanic5_name", "Coupe")
mechanic6 = Mechanic.new("mechanic6_name", "Sedan")
mechanic7 = Mechanic.new("mechanic7_name", "Minivan")
mechanic8 = Mechanic.new("mechanic8_name", "Hybrid")
mechanic9 = Mechanic.new("mechanic9_name", "Sedan")
mechanic10 = Mechanic.new("mechanic10_name", "Sport")

binding.pry

puts "we pryin"