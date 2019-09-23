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
    Car.all.select {|car| car.car_owner == self} 
  end

  def mechanics
    self.cars.map {|car| car.mechanic}
  end

  def self.car_amount_per_owner
    CarOwner.all.map {|owner| owner.cars.size}
  end

  def self.average_amount
    self.car_amount_per_owner.reduce(0) {|sum, car_num| (sum + car_num) / car_num}  
  end


end