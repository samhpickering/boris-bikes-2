require 'docking_station'

describe DockingStation do
  

  describe '#release_bike' do
    it {is_expected.to respond_to :release_bike}
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end



describe '#dock' do
  it {is_expected.to respond_to(:dock).with(1).argument}
    it 'shows a docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.docked).to eq bike
    end
    it 'raises an error' do
      bike = Bike.new
      subject.dock(bike)
      expect {subject.dock(bike)}.to raise_error 'Station at capacity'
    end
  end
end