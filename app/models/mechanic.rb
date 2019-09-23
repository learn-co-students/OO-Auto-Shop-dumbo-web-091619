class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def cars_serviced
    Car.all().select do |car|
      car.mechanic == self
    end
  end

  def customers
    self.cars_serviced().map do |car|
      car.owner
    end
  end

  def customers_name
    self.customers().map do |customer|
      customer.name
    end
  end

  def
    self.all
    @@all
  end

end