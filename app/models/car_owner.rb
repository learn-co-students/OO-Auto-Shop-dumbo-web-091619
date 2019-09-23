class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def get_cars
    Car.all.select { |car| car.owner == self }
  end

  def get_mechanics
    car_types = get_cars.map { |car| car.type }
    mechanics = []

      car_types.each { |type|
        Mechanic.all.map { |visited_mechanic|
          if visited_mechanic.specialty == type
              mechanics << visited_mechanic
          end
        }
      }

  return mechanics
  end

  def self.average_cars_owned
    count = Hash.new(0)
    sum = 0

    Car.all.each { |cars| count[cars.owner.name] += 1 }
    count.values.each { |n| sum += n }

    sum / count.length
  end

  def self.all
    @@all
  end

end