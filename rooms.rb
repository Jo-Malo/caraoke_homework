class Rooms

  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = "Mandalay"
    @capacity = []
  end

  def room_name
    return @rooms
  end

  def room_capacity_empty
    return @capacity
  end

  def check_in_guest(guest)
    return capacity << guest
  end

  # def check_out_guest(guest)
  #   capcity.pop
  # end

end
