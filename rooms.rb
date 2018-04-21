class Rooms

  attr_reader :name, :capacity, :songs

  def initialize(name)
    @name = "Mandalay"
    @capacity = []
    @songs = []
  end

  def room_name
    return @rooms
  end

  def room_capacity
    return @capacity
  end

  def add_guest(guest)
    @capacity.push(guest)
  end

  def check_in_guest(guest)
    return capacity << guest
  end

  def check_out_guest(guest)
    @capacity.delete(guest)
  end

  def check_song_playlist
    return @songs
  end

  def add_song_to_room(song)
    @songs.push(song)
  end

  def too_many_guests(capacity)
  if capacity <=> 4
    return false
  else
    return true
  end
end

end
