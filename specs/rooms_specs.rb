require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')

class TestRooms < MiniTest::Test

  def setup
    @rooms = Rooms.new("Mandalay", [])
    @guests = Guests.new("Antonio")
  end

  def test_room_name
    assert_equal("Mandalay", @rooms.name)
  end

  def test_room_capacity_empty
    assert_equal([], @rooms.room_capacity_empty)
  end

  def test_check_in_guest
    result = @rooms.check_in_guest(@guests.name())
    assert_equal(["Antonio"], @rooms.capacity)
  end

  # def test_check_out_guest
  #   result = @rooms.check_out_guest(@guests.name)
  #   assert_equal([], @rooms.capacity)
  # end

end
