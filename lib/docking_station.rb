class DockingStation
  attr_reader :docked

  def release_bike
    fail 'No bikes available' if @docked.nil?
    @docked
  end

  def dock(bike)
    fail 'Station at capacity' if @docked
    @docked = bike
  end
end
