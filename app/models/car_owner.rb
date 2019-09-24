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

  def add_new_car(make, model, classification,mechanic)
    Car.new(make,model, classification, self, mechanic)
  end

  def self.average_amount
    Car.all.size.to_f / CarOwner.all.size.to_f
  end


end