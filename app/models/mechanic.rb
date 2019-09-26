
  # - Get a list of all mechanics

  # - Get a list of all cars that a mechanic services

  # - Get a list of all the car owners that go to a specific mechanic

  # - Get a list of the names of all car owners who
  # go to a specific mechanic


class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select do |car|
    car.mechanic == self
  end
end

def owners
  self.cars.map do |car|
    car.owner
  end
end

def owners_names
  self.owners.map do |owner|
    owner.name
  end
end


end
