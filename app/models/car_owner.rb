
  # - Get a list of all owners

  # - Get a list of all the cars that a specific owner has

  # - Get a list of all the mechanics that a specific owner goes to

  # - Get the average amount of cars owned for all owners

class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    self.cars.map do |car|
      car.mechanic
    end
  end

  def self.average_cars
    all_cars = self.all.reduce(0) do |sum, owner|
      sum + owner.cars.length
    end
    all_cars.to_f / @@all.length
  end


end
