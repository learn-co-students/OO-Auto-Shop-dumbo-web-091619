class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def self.list
    Mechanic.all.map { |mechanic| mechanic }
  end

  def service
    Car.list.select { |car| car.type == self.specialty }
  end

  def list_owners
    service().map { |car| car.owner }
  end

  def list_owner_names
    list_owners().map { |owner| owner.name }.uniq
  end

  def self.all
    @@all
  end

end