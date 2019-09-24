class CarOwner

  attr_reader :name
  attr_accessor :mechanic
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_my_cars
    Car.all.select{|car| car.owner == self}
  end

  def my_mechanic
    self.find_my_cars.map{|car| car.mechanic}
  end

  def self.average_cars
    total = CarOwner.all.reduce(0){|sum, num| sum + num.find_my_cars.count}
    total/CarOwner.all.count
  end


end
