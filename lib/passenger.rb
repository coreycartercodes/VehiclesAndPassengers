class Passenger
  attr_reader :name, :age, :driver

  def initialize(info)
    @name = info["name"]
    @age = info["age"]
    @driver = false
  end



end
