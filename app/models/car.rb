class Car

  attr_reader :make, :model, :type
  attr_accessor :owner

  @@all = []

  def initialize(make, model, type, owner)
    @make = make
    @model = model
    @type = type
    @owner = owner

    @@all << self
  end

  def self.list
    Car.all.map { |car| car }
  end

  def self.get_types
    list.map { |car| car.type }
  end

  # def self.get_mechanic(car_type)
  #     Mechanic.all.select { |mechanic| mechanic.specialty == car_type }
  # end

  def get_mechanic
      Mechanic.all.select { |mechanic| mechanic.specialty == self.type }
  end

  def self.all
    @@all
  end

end