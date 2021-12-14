class DockingStation
  attr_reader :docked

  def initialize
    @docked = []
  end

  def release_bike
    fail 'No bikes available' if @docked.empty?
    @docked.pop
  end

  def dock(bike)
    fail 'Station at capacity' if @docked.count == 20
    @docked.push(bike)
  end
end
