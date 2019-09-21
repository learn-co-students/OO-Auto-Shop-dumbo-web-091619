class Car
  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic

  @@all = []
  
  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map(&:classification).uniq
  end
end
