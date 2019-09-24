class Car

  attr_reader :make, :model
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

  def self.all
    @@all
  end

  def self.classifications
    self.all.map{|car| car.classification}
  end 

  def my_mechanic
    Mechanic.all.select{|mech| mech.expertise == self.classification}
  end

end
