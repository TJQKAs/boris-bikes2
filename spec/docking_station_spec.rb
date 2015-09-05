require 'docking_station'
describe DockingStation do                                 # body of the test 
  it {is_expected.to respond_to :release_bike}             # expected method release_bike
  
        it 'releases working bikes' do #
          subject.dock Bike.new #
          bike=subject.release_bike
          expect(bike).to be_working
        end
  
  it 'does not release bikes in case of it is broken' do
      bike=Bike.new
      bike.report_broken
      subject.dock bike
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end

  it {is_expected.to respond_to(:dock).with(1).argument}
  
    describe '#release_bike' do                         # what we describe 
      it 'raises an error when there are no bikes available' do # what it makes
        expect {subject.release_bike}.to raise_error 'No bikes available' #
      end
      end
  
      describe '#dock' do
        it 'raises an error when full' do
          subject.capacity.times {subject.dock Bike.new}
          expect { subject.dock Bike.new }.to raise_error 'Docking station full'
        end
      end
end