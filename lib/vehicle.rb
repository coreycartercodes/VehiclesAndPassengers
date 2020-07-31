require './lib/passenger'

class Vehicle
  attr_reader :year, :make, :model, :speeing

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
  end

  

end
