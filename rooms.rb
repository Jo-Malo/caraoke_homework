class Rooms

  attr_reader :name, :capacity, :maxhold, :till, :songs, :entry_fee

  def initialize(name, maxhold, till)
    @name = "Mandalay"
    @maxhold = maxhold
    @till = till
    @capacity = []
    @songs = []
    @entry_fee = 5
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

  def remove_song_from_room(song)
    @songs.delete(song)
  end

# below dunno what this is doing
  def too_many_guests(capacity)
  if capacity <=> 4
    p "full"
  else
    p "spaces here"
  end
end

# capacity should be rewritten an integer 
def room_has_maxhold
  return @maxhold
end

def add_to_till(money)
  @till += money
end

end
