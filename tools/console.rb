require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

howard = CarOwner.new("Howard")
jamie = CarOwner.new("Jamie")
ellie = CarOwner.new("Ellie")

jenny = Mechanic.new("Jenny", "classics")
billy = Mechanic.new("Billy", "supercars")
emory = Mechanic.new("Emory", "restoration")

cherry = Car.new("Ford", "F-150", howard, jenny, "classics")
zoomer = Car.new("McLaren", "720s", ellie, billy, "supercars")
miss_daisy = Car.new("BMW", "3.0 CSL", jamie, emory, "restoration")
honey = Car.new("Chevy", "Corvette", ellie, emory, "restoration")

puts "CarOwner.all works?"
puts CarOwner.all.length == 3

puts "Mechanic.all works?"
puts Mechanic.all.length == 3

puts "Car.all works?"
puts Car.all.length == 4

puts "car_owner.cars works?"
puts ellie.cars.length == 2

puts "car_owner.mechanics works?"
puts ellie.mechanics.length == 2

puts "CarOwner.average_cars works?"
puts CarOwner.average_cars == 4.0/3.0

puts "Car.classifications works?"
puts Car.classifications.length == 3

puts "car#find_mechanic works?"
puts honey.find_mechanic.length == 1

puts "mechanic#cars works?"
puts emory.cars.length == 2

puts "mechanic#owners works?"
puts emory.owners.length == 2

puts "mechanic#owners_names works?"
puts emory.owners_names == ["Jamie", "Ellie"]

binding.pry
puts "vroom vroom!"