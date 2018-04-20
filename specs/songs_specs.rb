require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class TestSongs < MiniTest::Test

  def setup
    @songs = Songs.new("Heroes", "Peter Gabriel")
  end

  def test_song_name
    assert_equal("Heroes", @songs.name)
  end

  def test_song_artist
    assert_equal("Peter Gabriel", @songs.artist)
  end

end
