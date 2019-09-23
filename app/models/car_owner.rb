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
    cars.map do |car|
      car.mechanic 
    end
  end

  def self.average_number_of_cars
    number_of_cars = self.all.map do |owner|
      owner.cars.size
    end

    sum_of_cars = number_of_cars.reduce do |sum, num|
      sum + num
    end

    sum_of_cars.to_f / number_of_cars.size

  end


end
