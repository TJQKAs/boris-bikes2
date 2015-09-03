require 'docking_station'
describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  
  it 'gets working bike' do 
    bike = subject.release_bike
   # expect(:release_bike) == (Bike.new) 
    expect(bike).to be_working
  end
  end
