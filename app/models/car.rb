class Car
  attr_accessor :owner, :mechanic
  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
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

  def mechanic_classification
    Mechanic.all.select do |mechanic|
      self.classification == mechanic.specialty
    end
  end
    

end
