require 'docking_station'

describe DockingStation do
  # let(:bike) {double 'bike'}
  describe '.release_bike' do
    it { is_expected.to respond_to(:release_bike) }

    it 'should release a working bike' do
      bike = subject.release_bike
      expect(bike).to be_working
    end
  end
  it { is_expected.to respond_to(:dock).with(1).arguments }

  describe '#bikes' do
    it 'starts at 0 before any bikes are docked' do
      expect(subject.bikes).to eq []
    end
  end

  describe '.dock' do
    it 'stores docked bikes in the @bikes array' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to include bike
    end
  end
  # it { is_expected.to have_attributes(assigns(:bike) == 0) }
end
