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
    Car.all.select { |car| car.owner == self }
  end 

  def mechanics
    self.cars.map { |car| car.mechanic }.uniq
  end

  def self.avg_num_cars
    Car.all.count/CarOwner.all.count
  end
  
end