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
    cars.map(&:mechanic)
  end

  def self.average_amount_cars_owned
    sum_of_cars = self.all.reduce(0) do |total, owner|
      total + owner.cars.count
    end
    sum_of_cars.to_f / self.all.count
  end
end
