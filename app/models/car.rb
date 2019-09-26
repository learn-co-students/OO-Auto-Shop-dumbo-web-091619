
  # - Get a list of all cars

  # - Get a list of all car classifications

  # - Get a list of mechanics that have an expertise that matches the car classification

class Car

  attr_reader :make, :model, :owner, :mechanic, :classification

  @@all = []

  def initialize(make, model, owner, mechanic, classification)
    @make = make
    @model = model
    @owner = owner
    @mechanic = mechanic
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    classifications = self.all.map do |car|
      car.classification
    end
    classifications.uniq
  end

  def find_mechanic
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
