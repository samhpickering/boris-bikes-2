require './lib/docking_station'
require './lib/bike'

bike = Bike.new
docking_station = DockingStation.new

20.times {p docking_station.dock(Bike.new)}

