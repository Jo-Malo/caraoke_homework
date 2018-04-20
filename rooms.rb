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

  def room_capacity_empty
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

  def add_song_to_room(song)
    @songs.push(song)
  end

end
