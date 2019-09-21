require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#   def initialize(make, model, classification, owner, mechanic)

owner1 = CarOwner.new("Rob")
owner2 = CarOwner.new("Mike")
owner3 = CarOwner.new("Steve")
owner4 = CarOwner.new("Emir")
owner5 = CarOwner.new("Austin")

mechanic1 = Mechanic.new("Rob", "clunker")
mechanic2 = Mechanic.new("Mike", "antique")
mechanic3 = Mechanic.new("Steve", "clunker")
mechanic4 = Mechanic.new("Emir", "clunker")
mechanic5 = Mechanic.new("Austin", "exotic")

accord = Car.new("honda", "accoord", "clunker", owner1, mechanic1)
toyata = Car.new("toyota", "camery", "clunker", owner2, mechanic1)
civic = Car.new("honda", "civic", "clunker", owner1, mechanic1)
binding.pry
