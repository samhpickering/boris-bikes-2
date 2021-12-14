class DockingStation
  attr_reader :docked

  def release_bike
    fail 'No bikes available' if @docked.nil?
    @docked
  end

  def dock(bike)
    @docked = bike
  end
end
