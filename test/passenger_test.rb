require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/passenger"

class PassengerTest < Minitest::Test

  def test_it_exists
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    assert_instance_of Passenger, charlie
  end

  def test_it_has_attributes
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    assert_equal "Charlie", charlie.name
    assert_equal 18, charlie.age
    assert_equal "Taylor", taylor.name
  end

  def test_it_can_tell_adult

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    assert_equal true, charlie.adult?
    assert_equal false, taylor.adult?
  end

  def test_drive_changes_driver?
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})

    assert_equal false, charlie.driver?

    charlie.drive
    assert_equal true, charlie.driver?
  end

end
