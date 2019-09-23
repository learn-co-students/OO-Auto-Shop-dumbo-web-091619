require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

french_montana = CarOwner.new("French Montana")
miss_frizz = CarOwner.new("Miss Frizzle")
cj = CarOwner.new("CJ")
ethan = CarOwner.new("Ethan Fournier")
keenan = CarOwner.new("Keenan Alves")
adeja = CarOwner.new("Adeja Lendor")

luxury_mechanic = Mechanic.new("Steve", "luxury")
luxury_mechanic2 = Mechanic.new("Stephanie", "luxury")
bumby_mechanic = Mechanic.new("Jimbo", "hoopty")
american_mechanic = Mechanic.new("Rich", "american muscle")
tech_mechanic = Mechanic.new("Elon Musk", "science")

bmw_3 = Car.new("BMW", "3 Series", "luxury", ethan, luxury_mechanic)
green_sabre =Car.new("Dodge", "Sabre", "american muscle", cj, american_mechanic)
magic_school_bus = Car.new("GMC", "bus", "hoopty", miss_frizz, bumby_mechanic)
rari = Car.new("Ferari", "F12", "luxury", french_montana, luxury_mechanic2)
tesla = Car.new("Tesla", "Model S", "science", keenan, tech_mechanic)
gtr = Car.new("Nissan", "GTR", "luxury", keenan, luxury_mechanic2)
audiR8 = Car.new("Audi","R8", "science", adeja, tech_mechanic)

binding.pry
