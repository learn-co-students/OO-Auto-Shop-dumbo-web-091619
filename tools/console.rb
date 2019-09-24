require_relative '../config/environment.rb'

def reload
  load './config/environment.rb'
end

o1=CarOwner.new("Sena")
o2=CarOwner.new("Emirhan")

m1=Mechanic.new("Kamil Usta", "Antique")
m2=Mechanic.new("Arif Usta", "Sports")

c1=Car.new("Camaro", 94, "Antique", o1, m1)
c2=Car.new("Dodge", 85, "Sports", o2, m2)




binding.pry
0