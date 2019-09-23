class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

    # 1) Pull all the cars
    # 2) Only choose the ones I care about
  def list_all_cars
    Car.all().select do |car| # select is filter on a condition 
      car.owner == self       # self is the instance of a carowner who called this function
    end
  end

  def list_all_mechanics
    self.list_all_cars().map do |car|
      car.mechanic 
    end
  end 

  def owner_list
    self.all
  end 

end
