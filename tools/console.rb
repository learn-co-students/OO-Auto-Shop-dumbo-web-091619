require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dom = CarOwner.new("Dom")
brian = CarOwner.new("Brian")
han = CarOwner.new("Han")

gal = Mechanic.new("Gal", "Luxury")
roman = Mechanic.new("Roman", "Sport")
tez = Mechanic.new("Tez", "Sport")
letty = Mechanic.new("Letty", "Muscle")

supra = Car.new("Toyota", "Supra", "Sport", brian, roman)
charger = Car.new("Dodge", "Charger", "Muscle", dom, letty)
skyline = Car.new("Nissan", "Skyline", "Sport", brian, roman)
lfa = Car.new("Lexus", "LFA", "Luxury", han, gal)
challenger = Car.new("Dodge", "Challenger", "Muscle", dom, letty)


binding.pry
0