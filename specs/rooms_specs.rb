require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < MiniTest::Test

  def setup
    @rooms = Rooms.new("Mandalay", 3, 20)
    @guests = Guests.new("Antonio")
    @guest2 = Guests.new("Bob")
    @rooms.add_guest(@guests)

    @song1 = Songs.new("Girls on Film", "Peter")
    @song2 = Songs.new("Toto", "Who cares")
    @rooms.add_song_to_room(@song1)
    #not very well organised - would prefer to hold capacity & playlist within @rooms
  end

  def test_room_name
    assert_equal("Mandalay", @rooms.name)
  end

  def test_room_capacity
    assert_equal([@guests], @rooms.room_capacity)
  end

  def test_check_in_guest
    result = @rooms.check_in_guest(@guest2)
    assert_equal(2, @rooms.capacity.length)
  end

  def test_check_out_guest
    @rooms.check_out_guest(@guests)
    assert_equal(0, @rooms.capacity.length)
  end

  def test_check_song_playlist
    assert_equal(1, @rooms.songs.length)
  end

  def test_add_song_to_room
    @rooms.add_song_to_room(@song1)
    assert_equal(2, @rooms.songs.length)
  end

  def remove_song_from_room
      @rooms.add_song_to_room(@song1)
      assert_equal(0, @rooms.songs.length)
  end

  def test_too_many_guests
    result = @rooms.too_many_guests(@rooms.capacity)
    assert_equal("spaces here", result)
  end

  def test_room_has_maxhold
    assert_equal(3, @rooms.maxhold)
  end

  def test_entry_fee
    assert_equal(5, @rooms.entry_fee)
  end

  def test_add_to_till
    @rooms.add_to_till(@rooms.entry_fee)
    assert_equal(25, @rooms.till)
  end

end
