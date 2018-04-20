require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guests = Guests.new("Antonio")
  end

  def test_guest_name
    assert_equal("Antonio", @guests.name)
  end

end
