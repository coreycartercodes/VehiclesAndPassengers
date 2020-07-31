class Passenger
  attr_reader :name, :age, :driver

  def initialize(info)
    @name = info["name"]
    @age = info["age"]
    @driver = false
  end

  def adult?
    @age >=18
  end



end
