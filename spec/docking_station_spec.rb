require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'shows a docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.docked).to eq bike
  end
end