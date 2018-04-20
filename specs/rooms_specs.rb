require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < MiniTest::Test

  def setup
    @rooms = Rooms.new("Mandalay")
    @guests = Guests.new("Antonio")
    @guest2 = Guests.new("Bob")
    @rooms.add_guest(@guests)

    @song1 = Songs.new("Girls on Film", "Peter")
  end

  def test_room_name
    assert_equal("Mandalay", @rooms.name)
  end

  def test_room_capacity_empty
    assert_equal([@guests], @rooms.room_capacity_empty)
  end

  def test_check_in_guest
    result = @rooms.check_in_guest(@guest2)
    assert_equal(2, @rooms.capacity.length)
  end

  def test_check_out_guest
    @rooms.check_out_guest(@guests)
    assert_equal(0, @rooms.capacity.length)
  end

  def test_add_song_to_room
    @rooms.add_song_to_room(@song1)
    assert_equal(1, @rooms.songs.length)
  end

end
