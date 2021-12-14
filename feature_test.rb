require './lib/docking_station'
require './lib/bike'

bike = Bike.new
docking_station = DockingStation.new

p docking_station.dock(bike)

p docking_station.dock(bike)